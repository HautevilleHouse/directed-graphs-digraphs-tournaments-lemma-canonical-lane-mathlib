import canonicalLaneMathlib.AdmissibleClass
import DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.DirectedGraphObjects

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure ScoreSequencePackage where
  scoreExistential : Prop
  landauCriteria : Prop
  erdosGallaiAnalogue : Prop
  uniquenessUpToIsomorphism : Prop

structure ScoreSequenceEvidence (S : ScoreSequencePackage) where
  scoreExistentialClosed : S.scoreExistential
  landauCriteriaClosed : S.landauCriteria
  erdosGallaiAnalogueClosed : S.erdosGallaiAnalogue
  uniquenessUpToIsomorphismClosed : S.uniquenessUpToIsomorphism

def ScoreSequenceClosed (S : ScoreSequencePackage) : Prop :=
  S.scoreExistential ∧ S.landauCriteria ∧ S.erdosGallaiAnalogue ∧ S.uniquenessUpToIsomorphism

theorem score_sequence_closed_from_evidence
    (S : ScoreSequencePackage) (E : ScoreSequenceEvidence S) :
    ScoreSequenceClosed S := by
  exact And.intro E.scoreExistentialClosed
    (And.intro E.landauCriteriaClosed
      (And.intro E.erdosGallaiAnalogueClosed E.uniquenessUpToIsomorphismClosed))

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse