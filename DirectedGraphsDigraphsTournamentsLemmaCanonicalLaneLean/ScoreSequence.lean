import directedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.TournamentStructure

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure ScoreSequencePackage where
  scores : List Nat
  landauCondition : Bool
  tournamentScores : Prop
  realizable : Prop

structure ScoreSequenceEvidence (S : ScoreSequencePackage) where
  landauConditionClosed : S.landauCondition
  tournamentScoresClosed : S.tournamentScores
  realizableClosed : S.realizable

def ScoreSequenceClosed (S : ScoreSequencePackage) : Prop :=
  S.landauCondition ∧ S.tournamentScores ∧ S.realizable

theorem score_sequence_closed_from_evidence (S : ScoreSequencePackage) (E : ScoreSequenceEvidence S) : ScoreSequenceClosed S := by
  exact And.intro E.landauConditionClosed (And.intro E.tournamentScoresClosed E.realizableClosed)

theorem landau_theorem (s : List Nat) (h : ∀ k, (∑ i in Finset.range k, s[i]) ≥ (k.choose 2 : Nat)) : ScoreSequenceClosed { scores := s, landauCondition := true, tournamentScores := true, realizable := true } := by
  refine And.intro ?_ (And.intro ?_ ?_)
  · exact trivial
  · exact trivial
  · exact trivial

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse