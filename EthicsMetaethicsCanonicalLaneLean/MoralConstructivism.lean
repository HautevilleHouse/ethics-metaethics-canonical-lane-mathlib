import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure MoralConstructivismPackage where
  moralPrinciplesConstructedByReason : Prop
  universalizabilityTest : Prop
  rationalConsensus : Prop

structure MoralConstructivismEvidence (M : MoralConstructivismPackage) where
  moralPrinciplesConstructedByReasonClosed : M.moralPrinciplesConstructedByReason
  universalizabilityTestClosed : M.universalizabilityTest
  rationalConsensusClosed : M.rationalConsensus

def MoralConstructivismClosed (M : MoralConstructivismPackage) : Prop :=
  M.moralPrinciplesConstructedByReason ∧ M.universalizabilityTest ∧ M.rationalConsensus

theorem moral_constructivism_closed_from_evidence (M : MoralConstructivismPackage) (E : MoralConstructivismEvidence M) :
    MoralConstructivismClosed M := by
  exact And.intro E.moralPrinciplesConstructedByReasonClosed
    (And.intro E.universalizabilityTestClosed E.rationalConsensusClosed)

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse