import EthicsMetaethicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure AdmissibleClass where
  object : EthicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EthicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse