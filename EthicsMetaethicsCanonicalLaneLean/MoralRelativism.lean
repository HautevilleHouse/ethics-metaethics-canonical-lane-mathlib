import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure MoralRelativismPackage where
  moralJudgmentsDependOnContext : Prop
  noAbsoluteMoralStandards : Prop
  toleranceNorm : Prop

structure MoralRelativismEvidence (M : MoralRelativismPackage) where
  moralJudgmentsDependOnContextClosed : M.moralJudgmentsDependOnContext
  noAbsoluteMoralStandardsClosed : M.noAbsoluteMoralStandards
  toleranceNormClosed : M.toleranceNorm

def MoralRelativismClosed (M : MoralRelativismPackage) : Prop :=
  M.moralJudgmentsDependOnContext ∧ M.noAbsoluteMoralStandards ∧ M.toleranceNorm

theorem moral_relativism_closed_from_evidence (M : MoralRelativismPackage) (E : MoralRelativismEvidence M) :
    MoralRelativismClosed M := by
  exact And.intro E.moralJudgmentsDependOnContextClosed
    (And.intro E.noAbsoluteMoralStandardsClosed E.toleranceNormClosed)

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse