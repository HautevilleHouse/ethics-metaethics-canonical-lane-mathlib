import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure EthicalNaturalismPackage where
  moralPropertiesReducibleToNatural : Prop
  epistemicAccessNatural : Prop
  moralExplanationsCausal : Prop

structure EthicalNaturalismEvidence (E : EthicalNaturalismPackage) where
  moralPropertiesReducibleToNaturalClosed : E.moralPropertiesReducibleToNatural
  epistemicAccessNaturalClosed : E.epistemicAccessNatural
  moralExplanationsCausalClosed : E.moralExplanationsCausal

def EthicalNaturalismClosed (E : EthicalNaturalismPackage) : Prop :=
  E.moralPropertiesReducibleToNatural ∧ E.epistemicAccessNatural ∧ E.moralExplanationsCausal

theorem ethical_naturalism_closed_from_evidence (E : EthicalNaturalismPackage) (Ev : EthicalNaturalismEvidence E) :
    EthicalNaturalismClosed E := by
  exact And.intro Ev.moralPropertiesReducibleToNaturalClosed
    (And.intro Ev.epistemicAccessNaturalClosed Ev.moralExplanationsCausalClosed)

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse