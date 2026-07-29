import canonicalLaneMathlib.AdmissibleClass
import DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.DirectedGraphObjects

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure TournamentLemmaClassificationPackage where
  reinjectionCond : Prop
  kingTheorem : Prop
  strongConnImplication : Prop
  landauTheorem : Prop

structure TournamentLemmaClassificationEvidence (P : TournamentLemmaClassificationPackage) where
  reinjectionCondClosed : P.reinjectionCond
  kingTheoremClosed : P.kingTheorem
  strongConnImplicationClosed : P.strongConnImplication
  landauTheoremClosed : P.landauTheorem

def TournamentLemmaClassificationClosed (P : TournamentLemmaClassificationPackage) : Prop :=
  P.reinjectionCond ∧ P.kingTheorem ∧ P.strongConnImplication ∧ P.landauTheorem

theorem tournament_lemma_classification_closed_from_evidence
    (P : TournamentLemmaClassificationPackage)
    (E : TournamentLemmaClassificationEvidence P) :
    TournamentLemmaClassificationClosed P := by
  exact And.intro E.reinjectionCondClosed
    (And.intro E.kingTheoremClosed
      (And.intro E.strongConnImplicationClosed E.landauTheoremClosed))

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse