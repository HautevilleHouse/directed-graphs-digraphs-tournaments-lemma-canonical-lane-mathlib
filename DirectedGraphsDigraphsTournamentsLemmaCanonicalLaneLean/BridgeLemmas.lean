import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse