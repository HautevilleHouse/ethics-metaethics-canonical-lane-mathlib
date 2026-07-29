import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure MoralRealismPackage where
  moralFactsExist : Prop
  moralPropertiesObjective : Prop
  moralKnowledgePossible : Prop

structure MoralRealismEvidence (M : MoralRealismPackage) where
  moralFactsExistClosed : M.moralFactsExist
  moralPropertiesObjectiveClosed : M.moralPropertiesObjective
  moralKnowledgePossibleClosed : M.moralKnowledgePossible

def MoralRealismClosed (M : MoralRealismPackage) : Prop :=
  M.moralFactsExist ∧ M.moralPropertiesObjective ∧ M.moralKnowledgePossible

theorem moral_realism_closed_from_evidence (M : MoralRealismPackage) (E : MoralRealismEvidence M) :
    MoralRealismClosed M := by
  exact And.intro E.moralFactsExistClosed
    (And.intro E.moralPropertiesObjectiveClosed E.moralKnowledgePossibleClosed)

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse