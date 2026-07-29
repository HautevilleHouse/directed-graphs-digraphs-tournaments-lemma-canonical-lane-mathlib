import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse