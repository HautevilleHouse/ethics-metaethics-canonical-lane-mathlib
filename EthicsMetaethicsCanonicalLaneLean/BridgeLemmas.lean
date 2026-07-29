import EthicsMetaethicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EthicsMetaethicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EthicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EthicsMetaethicsCanonicalLaneLean
end HautevilleHouse