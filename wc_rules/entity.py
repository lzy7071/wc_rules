from wc_rules import base,variables

class Entity(base.BaseClass):

	def __init__(self,**kwargs):
		super().__init__(**kwargs)
		attrdict = self.attribute_properties
		
		vardict = self.get_variable_dict()
		for attrname in vardict:
			self.attribute_properties[attrname]['variable'] = vardict[attrname]
		
		
	def get_variable_dict(self):
		attrdict = self.attribute_properties
		vardict = dict()
		for attrname in attrdict:
			vardict[attrname] = False
			if attrdict[attrname]['related']:
				if issubclass(attrdict[attrname]['related_class'],variables.StateVariable):
					vardict[attrname] = True
		return vardict