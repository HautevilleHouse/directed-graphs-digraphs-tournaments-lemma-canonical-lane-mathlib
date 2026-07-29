import directedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.RedeiGate

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure TournamentProperties where
  strongConnectivity : Prop
  kingVertex : Prop
  scoreSequence : List Nat
  transitiveSubtournament : Prop

structure TournamentStructureEvidence where
  strongConnectivityClosed : strongConnectivity
  kingVertexClosed : kingVertex
  transitiveSubtournamentClosed : transitiveSubtournament

def TournamentStructureClosed (P : TournamentProperties) : Prop :=
  P.strongConnectivity ∧ P.kingVertex ∧ P.transitiveSubtournament

theorem tournament_structure_closed_from_evidence (P : TournamentProperties) (E : TournamentStructureEvidence P) : TournamentStructureClosed P := by
  exact And.intro E.strongConnectivityClosed (And.intro E.kingVertexClosed E.transitiveSubtournamentClosed)

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse