import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure DirectedGraph where
  Vertex : Type u
  Edge : Vertex → Vertex → Prop

structure Tournament (D : DirectedGraph) : Prop where
  total : ∀ u v : D.Vertex, u ≠ v → (D.Edge u v) ∨ (D.Edge v u)
  asymmetric : ∀ u v : D.Vertex, D.Edge u v → ¬ D.Edge v u

def isHamiltonianPath (D : DirectedGraph) (p : List D.Vertex) : Prop :=
  (∀ v, v ∈ p) ∧ (∀ i, i < p.length - 1 → D.Edge (p.get ⟨i, by omega⟩) (p.get ⟨i+1, by omega⟩))

structure AdmissibleClass where
  digraph : DirectedGraph
  tournamentCond : Tournament digraph
  pathWitness : isHamiltonianPath digraph []

def admittedClosure (A : AdmissibleClass) : Prop :=
  True

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse