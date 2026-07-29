import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure UtilitarianCalculusPackage where
  utilityFunction : Prop
  totalUtility : Prop
  averageUtility : Prop
  actUtilitarianism : Prop
  ruleUtilitarianism : Prop

structure UtilitarianCalculusEvidence (U : UtilitarianCalculusPackage) where
  utilityFunctionClosed : U.utilityFunction
  totalUtilityClosed : U.totalUtility
  averageUtilityClosed : U.averageUtility
  actUtilitarianismClosed : U.actUtilitarianism
  ruleUtilitarianismClosed : U.ruleUtilitarianism

def UtilitarianCalculusClosed (U : UtilitarianCalculusPackage) : Prop :=
  U.utilityFunction ∧ U.totalUtility ∧ U.averageUtility ∧ U.actUtilitarianism ∧ U.ruleUtilitarianism

theorem utilitarian_calculus_closed_from_evidence
    (U : UtilitarianCalculusPackage) (E : UtilitarianCalculusEvidence U) :
    UtilitarianCalculusClosed U := by
  exact And.intro E.utilityFunctionClosed (And.intro E.totalUtilityClosed (And.intro E.averageUtilityClosed (And.intro E.actUtilitarianismClosed E.ruleUtilitarianismClosed)))

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse