import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure CategoricalImperativePackage where
  maxim : Prop
  universalLaw : Prop
  kingdomOfEnds : Prop
  autonomyPrinciple : Prop

structure CategoricalImperativeEvidence (C : CategoricalImperativePackage) where
  maximClosed : C.maxim
  universalLawClosed : C.universalLaw
  kingdomOfEndsClosed : C.kingdomOfEnds
  autonomyPrincipleClosed : C.autonomyPrinciple

def CategoricalImperativeClosed (C : CategoricalImperativePackage) : Prop :=
  C.maxim ∧ C.universalLaw ∧ C.kingdomOfEnds ∧ C.autonomyPrinciple

theorem categorical_imperative_closed_from_evidence
    (C : CategoricalImperativePackage) (E : CategoricalImperativeEvidence C) :
    CategoricalImperativeClosed C := by
  exact And.intro E.maximClosed (And.intro E.universalLawClosed (And.intro E.kingdomOfEndsClosed E.autonomyPrincipleClosed))

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse