import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure TransitiveSubtournamentPackage (T : TournamentObject) where
  subset : Finset T.vertexSet
  transitive : ∀ u v ∈ subset, u ≠ v → (T.adjacency u v ↔ T.adjacency v u → False)
  sizeBound : Finset.card subset ≥ Real.log2 (Finset.card (Finset.univ : Finset T.vertexSet))

structure TransitiveSubtournamentEvidence (T : TournamentObject) (S : TransitiveSubtournamentPackage T) where
  transitiveClosed : S.transitive
  sizeBoundClosed : S.sizeBound

def TransitiveSubtournamentClosed (T : TournamentObject) : Prop :=
  ∃ (S : TransitiveSubtournamentPackage T), S.transitive ∧ S.sizeBound

theorem transitive_subtournament_closed_from_evidence (T : TournamentObject) (S : TransitiveSubtournamentPackage T) (E : TransitiveSubtournamentEvidence T S) : TransitiveSubtournamentClosed T :=
  Exists.intro S (And.intro E.transitiveClosed E.sizeBoundClosed)

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse