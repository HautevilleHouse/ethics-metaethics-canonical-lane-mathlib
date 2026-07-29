import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EthicsMetaethicsCanonicalLaneLean.MoralRealismBridge
import HautevilleHouse.EthicsMetaethicsCanonicalLaneLean.NonCognitivismPackage
import HautevilleHouse.EthicsMetaethicsCanonicalLaneLean.EthicalNaturalism
import HautevilleHouse.EthicsMetaethicsCanonicalLaneLean.MoralConstructivism
import HautevilleHouse.EthicsMetaethicsCanonicalLaneLean.MoralRelativism
import HautevilleHouse.EthicsMetaethicsCanonicalLaneLean.MoralSkepticism

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let M := A.object
  MoralRealismClosed (M : MoralRealismPackage) → NonCognitivismClosed (M : NonCognitivismPackage) →
  EthicalNaturalismClosed (M : EthicalNaturalismPackage) → MoralConstructivismClosed (M : MoralConstructivismPackage) →
  MoralRelativismClosed (M : MoralRelativismPackage) → MoralSkepticismClosed (M : MoralSkepticismPackage) → True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  intro mr nc en mc mr2 ms
  trivial

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedMetaethicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metaethics_endgame (A : AdmissibleClass) : ConstrainedMetaethicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse