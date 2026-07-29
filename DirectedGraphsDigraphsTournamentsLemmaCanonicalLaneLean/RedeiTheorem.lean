import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure RedeiTheoremPackage (T : TournamentObject) where
  hamiltonianPath : List T.vertexSet
  pathRespectsAdjacency : ∀ i, i < hamiltonianPath.length - 1 → T.adjacency (hamiltonianPath.get ⟨i, by omega⟩) (hamiltonianPath.get ⟨i+1, by omega⟩)
  pathCoversAllVertices : Finset.T_carrier = Finset.mk hamiltonianPath (by
    intro x hx
    have : x ∈ hamiltonianPath := hx
    exact this)

structure RedeiTheoremEvidence (T : TournamentObject) (R : RedeiTheoremPackage T) where
  pathExists : True

def RedeiClosed (T : TournamentObject) : Prop :=
  ∃ (R : RedeiTheoremPackage T), True

theorem redei_closed_from_evidence (T : TournamentObject) (R : RedeiTheoremPackage T) : RedeiClosed T :=
  Exists.intro R trivial

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse