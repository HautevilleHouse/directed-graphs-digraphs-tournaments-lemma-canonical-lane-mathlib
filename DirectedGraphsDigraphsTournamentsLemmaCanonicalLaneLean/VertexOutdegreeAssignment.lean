import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure TournamentVertices where
  carrier : Type u
  finite : Fintype carrier

def outdegree (T : TournamentVertices) (v : T.carrier) : ℕ := 0

structure OutdegreeAssignment where
  T : TournamentVertices
  f : T.carrier → ℕ
  sumCondition : ∑ v : T.carrier, f v = (Fintype.card T.carrier * (Fintype.card T.carrier - 1)) / 2

def OutdegreeAssignedClosed (A : OutdegreeAssignment) : Prop :=
  A.sumCondition

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse
