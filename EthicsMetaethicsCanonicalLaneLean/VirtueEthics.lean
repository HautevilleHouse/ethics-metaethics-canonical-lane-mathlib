import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure VirtueEthicsPackage where
  eudaimonia : Prop
  virtueTraits : Prop
  phronesis : Prop
  goldenMean : Prop
  moralExemplar : Prop

structure VirtueEthicsEvidence (V : VirtueEthicsPackage) where
  eudaimoniaClosed : V.eudaimonia
  virtueTraitsClosed : V.virtueTraits
  phronesisClosed : V.phronesis
  goldenMeanClosed : V.goldenMean
  moralExemplarClosed : V.moralExemplar

def VirtueEthicsClosed (V : VirtueEthicsPackage) : Prop :=
  V.eudaimonia ∧ V.virtueTraits ∧ V.phronesis ∧ V.goldenMean ∧ V.moralExemplar

theorem virtue_ethics_closed_from_evidence
    (V : VirtueEthicsPackage) (E : VirtueEthicsEvidence V) :
    VirtueEthicsClosed V := by
  exact And.intro E.eudaimoniaClosed (And.intro E.virtueTraitsClosed (And.intro E.phronesisClosed (And.intro E.goldenMeanClosed E.moralExemplarClosed)))

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse