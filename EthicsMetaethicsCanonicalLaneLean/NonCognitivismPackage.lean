import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure NonCognitivismPackage where
  moralStatementsExpressEmotions : Prop
  noTruthValue : Prop
  practicalImport : Prop

structure NonCognitivismEvidence (N : NonCognitivismPackage) where
  moralStatementsExpressEmotionsClosed : N.moralStatementsExpressEmotions
  noTruthValueClosed : N.noTruthValue
  practicalImportClosed : N.practicalImport

def NonCognitivismClosed (N : NonCognitivismPackage) : Prop :=
  N.moralStatementsExpressEmotions ∧ N.noTruthValue ∧ N.practicalImport

theorem non_cognitivism_closed_from_evidence (N : NonCognitivismPackage) (E : NonCognitivismEvidence N) :
    NonCognitivismClosed N := by
  exact And.intro E.moralStatementsExpressEmotionsClosed
    (And.intro E.noTruthValueClosed E.practicalImportClosed)

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse