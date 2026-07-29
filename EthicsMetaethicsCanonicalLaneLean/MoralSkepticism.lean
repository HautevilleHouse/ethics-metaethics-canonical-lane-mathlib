import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

structure MoralSkepticismPackage where
  moralKnowledgeUnattainable : Prop
  errorTheory : Prop
  moralNihilism : Prop

structure MoralSkepticismEvidence (M : MoralSkepticismPackage) where
  moralKnowledgeUnattainableClosed : M.moralKnowledgeUnattainable
  errorTheoryClosed : M.errorTheory
  moralNihilismClosed : M.moralNihilism

def MoralSkepticismClosed (M : MoralSkepticismPackage) : Prop :=
  M.moralKnowledgeUnattainable ∧ M.errorTheory ∧ M.moralNihilism

theorem moral_skepticism_closed_from_evidence (M : MoralSkepticismPackage) (E : MoralSkepticismEvidence M) :
    MoralSkepticismClosed M := by
  exact And.intro E.moralKnowledgeUnattainableClosed
    (And.intro E.errorTheoryClosed E.moralNihilismClosed)

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse