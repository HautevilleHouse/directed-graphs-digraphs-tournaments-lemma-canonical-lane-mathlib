import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure Digraph (V : Type u) [Fintype V] where
  adj : V → V → Bool

def indegree (D : Digraph V) (v : V) : ℕ := Finset.card (Finset.filter (λ u : V => D.adj u v) (Finset.univ : Finset V))

theorem indegree_sum_eq_edges (D : Digraph V) : ∑ v : V, indegree D v = Finset.card (Finset.filter (λ (e : V × V) => D.adj e.1 e.2) (Finset.univ : Finset (V × V))) := by
  simp [indegree, Finset.card_eq_sum_ones, Finset.sum_finset_product]

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse