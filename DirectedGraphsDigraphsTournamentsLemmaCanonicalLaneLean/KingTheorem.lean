import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.TournamentStructure

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure KingVertex (V : Type) [DecidableEq V] (T : TournamentStructure V) where
  vertex : V
  reachableInTwo : ∀ v, v ≠ vertex → (T.edges (vertex, v) = true) ∨ (∃ w, T.edges (vertex, w) = true ∧ T.edges (w, v) = true)

structure KingsTournament (V : Type) [DecidableEq V] (T : TournamentStructure V) where
  kingExists : ∃ (k : KingVertex V T), True

def KingTheoremClosed (V : Type) [DecidableEq V] (T : TournamentStructure V) : Prop :=
  KingsTournament V T

theorem king_theorem_closed (V : Type) [DecidableEq V] (T : TournamentStructure V) : KingTheoremClosed V T := by
  -- classical proof: every tournament has a king
  sorry

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse