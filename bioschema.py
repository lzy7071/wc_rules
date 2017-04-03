from obj_model import core

###### Structures ######
class Complex(core.Model):
	id = core.StringAttribute(primary=True,unique=True)
	def getMolecule(self,label,**kwargs):
		if label is not None:
			return self.molecules.get(label=label,**kwargs)	
		else:
			return self.molecules.get(**kwargs)

class Molecule(core.Model):
	id = core.StringAttribute(primary=True,unique=True)
	complex = core.ManyToOneAttribute(Complex,related_name='molecules')
	@property
	def label(self): return self.__class__.__name__
	def getSite(self,label,**kwargs):
		if label is not None:
			return self.sites.get(label=label,**kwargs)
		else:
			return self.sites.get(**kwargs)
	
class Site(core.Model):
	id = core.StringAttribute(primary=True,unique=True)
	molecule = core.ManyToOneAttribute(Molecule,related_name='sites')
	@property
	def label(self): return self.__class__.__name__
	@property
	def bound(self):
		if self.bond is not None:
			return True
		return False
	@property
	def unbound(self): return not self.bound
	@property
	def available_to_bind(self):
		if self.unbound is False:
			return False
		if self.excludes() is not None:
			for site in self.excludes():
				if site.unbound is False:
					return False
		return True 
	def excludes(self):
		L = []
		for ex_obj in self.exclusions:
			for site in ex_obj.sites:
				if site is not self:	
					L.append(site)
		if len(L)>0:
			return L
		return None

class Bond(core.Model):
	id = core.StringAttribute(primary=True,unique=True)
	complex = core.ManyToOneAttribute(Complex,related_name='bonds')
	linkedsites = core.OneToManyAttribute(Site,related_name='bond')
	
class Exclusion(core.Model):
	id = core.StringAttribute(primary=True,unique=True)
	sites = core.ManyToManyAttribute(Site,related_name='exclusions')
	mol = core.ManyToOneAttribute(Molecule,related_name='exclusions')

###### Variables ######
class BooleanStateVariable(core.Model):
	id = core.StringAttribute(primary=True,unique=True)
	at = core.OneToOneAttribute(Site)
	value = core.BooleanAttribute(default=None)

###### Operations ######
class Operation(core.Model):
	id = core.StringAttribute(primary=True,unique=True)
	@property
	def label(self): return self.__class__.__name__
	@property
	def target(self): return None

class AddBond(Operation):
	linkedsites = core.OneToManyAttribute(Site,related_name='operation')
	@property
	def target(self): return self.linkedsites
	
class DeleteBond(Operation):
	bond = core.OneToOneAttribute(Bond,related_name='operation')
	@property
	def target(self): return self.bond
	
class ChangeBooleanState(Operation):
	boolvar = core.OneToOneAttribute(BooleanStateVariable,related_name='operation')
	@property
	def target(self): return self.boolvar
	
class ChangeBooleanStateToTrue(ChangeBooleanState):pass
class ChangeBooleanStateToFalse(ChangeBooleanState):pass
	
##### Rule #####
class Rule(core.Model):
	id = core.StringAttribute(primary=True,unique=True)
	label = core.StringAttribute(unique=True)
	reactants = core.OneToManyAttribute(Complex,related_name='rule')
	reversible = core.BooleanAttribute(default=False)
	operations = core.OneToManyAttribute(Operation,related_name='rule')
	
###### Structure Improvements ######
class Protein(Molecule): pass
class ProteinSite(Site): pass

###### Variable Improvements ######
class PhosphorylationState(BooleanStateVariable):
	at = core.OneToOneAttribute(Site,related_name='ph')

###### Operation Improvements ######
class Phosphorylate(ChangeBooleanStateToTrue): pass
class Dephosphorylate(ChangeBooleanStateToFalse): pass

def main():
	return
if __name__ == '__main__': 
	main()

