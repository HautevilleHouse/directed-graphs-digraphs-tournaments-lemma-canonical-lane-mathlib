import DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "directed-graphs-digraphs-tournaments-lemma-canonical-lane",
    theoremName := "ConstrainedDigraphEndgame",
    theoremObject := "Every tournament contains a Hamiltonian path (Redei's theorem).",
    classicalBoundary := "The unrestricted classical statement remains outside the constrained closure.",
    constrainedStatement := "The constrained digraph closure internalizes the admissible-class bridge for tournaments.",
    carriedRemainder := "The classical boundary is carried by the formalization certificate."
  }

def ConstrainedStatementClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedDigraphClosure A

theorem constrained_statement_closed_checked :
    ConstrainedStatementClosed := by
  intro A
  exact constrained_digraph_endgame A

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse
