import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure SocialContractPackage where
  originalPosition : Prop
  veilOfIgnorance : Prop
  twoPrinciples : Prop
  differencePrinciple : Prop
  reflectiveEquilibrium : Prop

structure SocialContractEvidence (S : SocialContractPackage) where
  originalPositionClosed : S.originalPosition
  veilOfIgnoranceClosed : S.veilOfIgnorance
  twoPrinciplesClosed : S.twoPrinciples
  differencePrincipleClosed : S.differencePrinciple
  reflectiveEquilibriumClosed : S.reflectiveEquilibrium

def SocialContractClosed (S : SocialContractPackage) : Prop :=
  S.originalPosition ∧ S.veilOfIgnorance ∧ S.twoPrinciples ∧ S.differencePrinciple ∧ S.reflectiveEquilibrium

theorem social_contract_closed_from_evidence
    (S : SocialContractPackage) (E : SocialContractEvidence S) :
    SocialContractClosed S := by
  exact And.intro E.originalPositionClosed (And.intro E.veilOfIgnoranceClosed (And.intro E.twoPrinciplesClosed (And.intro E.differencePrincipleClosed E.reflectiveEquilibriumClosed)))

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse