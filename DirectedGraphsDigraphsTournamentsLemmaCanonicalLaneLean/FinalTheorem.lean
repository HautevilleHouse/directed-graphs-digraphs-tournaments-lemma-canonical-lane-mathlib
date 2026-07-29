import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

def ConstrainedTournamentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tournament_endgame (A : AdmissibleClass) : ConstrainedTournamentClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse