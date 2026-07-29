import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure MoralAgent where
  carrier : Type
  rationality : Prop
  autonomy : Prop
  moralStatus : Prop

structure MoralAdmittedObject where
  agent : MoralAgent
  universalizable : Prop
  respectForPersons : Prop
  conclusion : Prop
  conclusionWitness : conclusion

structure MoralEndgameState where
  object : MoralAdmittedObject

def MoralWitnessClosed (O : MoralAdmittedObject) : Prop :=
  O.conclusion

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse