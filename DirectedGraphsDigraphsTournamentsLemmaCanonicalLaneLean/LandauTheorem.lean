import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.TournamentStructure

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure ScoreSequence where
  n : ℕ
  sequence : ℕ → ℕ
  nondecreasing : ∀ i j, i < j → sequence i ≤ sequence j
  sumCondition : ∑ i in Finset.range n, sequence i = n * (n-1) / 2

def LandauScoreCondition (s : ScoreSequence) : Prop :=
  s.nondecreasing ∧ s.sumCondition

theorem landau_score_condition_closed (s : ScoreSequence) : LandauScoreCondition s :=
  And.intro s.nondecreasing s.sumCondition

structure ScoreSequenceEvidence (s : ScoreSequence) where
  nondecreasingClosed : s.nondecreasing
  sumConditionClosed : s.sumCondition

theorem landau_score_condition_from_evidence (s : ScoreSequence) (E : ScoreSequenceEvidence s) : LandauScoreCondition s :=
  And.intro E.nondecreasingClosed E.sumConditionClosed

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse