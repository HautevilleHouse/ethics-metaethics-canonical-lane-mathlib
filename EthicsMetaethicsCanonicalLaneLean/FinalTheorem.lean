import EthicsMetaethicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

def ConstrainedEthicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ethics_endgame (A : AdmissibleClass) :
    ConstrainedEthicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse