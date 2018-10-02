from wc_rules.indexer import Index_By_ID, HashableDict, DictSet
from wc_rules.utils import listify,generate_id
from operator import eq
import random
import pprint

class Pattern(DictSet):
    def __init__(self,idx,nodelist=None,recurse=True):
        self.id = idx
        super().__init__()
        if nodelist:
            for node in nodelist:
                self.add_node(node,recurse)

    def add_node(self,node,recurse=True):
        if node not in self:
            self.add(node)
            if recurse:
                for attr in node.get_nonempty_related_attributes():
                    nodelist = listify(getattr(node,attr))
                    for node2 in nodelist:
                        self.add_node(node2,recurse)
        return self

    def remove_node(self,node):
        return self.remove(node)

    def __str__(self):
        return pprint.pformat(self) + '\n' + super().__str__(self)

    def duplicate(self,idx=None,preserve_ids=False):
        if idx is None:
            idx = generate_id()
        new_pattern = self.__class__(idx)
        nodemap = dict()
        for node in self:
            # this duplicates upto scalar attributes
            new_node = node.duplicate(preserve_id=preserve_ids)
            nodemap[node.id] = new_node
            new_pattern.add_node(new_node,recurse=False)
        for node in self:
            # this duplicates related attributes given nodemap
            new_node = nodemap[node.id]
            node.duplicate_relations(new_node,nodemap)
        return new_pattern

    def generate_queries_TYPE(self):
        ''' Generates tuples ('type',_class) '''
        type_queries = {}
        for node in self:
            idx = node.id
            type_queries[idx] = []
            list_of_classes = node.__class__.__mro__
            for _class in reversed(list_of_classes):
                if _class.__name__ in ['BaseClass','Model','object']:
                    continue
                v = ['type',_class]
                type_queries[idx].append(tuple(v))
        return type_queries

    def generate_queries_ATTR(self):
        ''' Generates tuples ('attr',attrname,operator,value) '''
        attr_queries = {}
        for node in self:
            idx = node.id
            attr_queries[idx] = []
            for attr in sorted(node.get_nonempty_scalar_attributes()):
                if attr=='id': continue
                v = ['attr',attr,eq,getattr(node,attr)]
                attr_queries[idx].append(tuple(v))
        return attr_queries

    def generate_queries_REL(self):
        ''' Generate tuples ('rel',idx1,attrname,related_attrname,idx2) '''
        rel_queries = []
        already_encountered = []
        for node in self:
            idx = node.id
            for attr in node.get_nonempty_related_attributes():
                nodelist = listify(getattr(node,attr))
                for node2 in nodelist:
                    if node2.id in already_encountered:
                        continue
                    related_attr = node.attribute_properties[attr]['related_attr']
                    # this is alphabetical comparison 'ab' < 'b'
                    if attr <= related_attr:
                            v = ['rel',idx,attr,related_attr,node2.id]
                    else:
                        v = ['rel',node2.id,related_attr,attr,idx]
                    rel_queries.append(tuple(v))
            already_encountered.append(idx)
        return rel_queries

    def generate_queries(self):
        return {
            'type': self.generate_queries_TYPE(),
            'attr': self.generate_queries_ATTR(),
            'rel': self.generate_queries_REL(),
        }

def main():
    pass


if __name__ == '__main__':
    main()
