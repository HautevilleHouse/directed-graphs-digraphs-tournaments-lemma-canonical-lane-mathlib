import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure Tournament (V : Type u) [Fintype V] where
  adj : V → V → Bool
  irreflexive : ∀ v, ¬ (adj v v)
  antisymmetric : ∀ v w, adj v w → ¬ (adj w v)
  total : ∀ v w, v ≠ w → (adj v w ∨ adj w v)

def reachableInTwoSteps (T : Tournament V) (v w : V) : Prop :=
  ∃ u : V, T.adj v u ∧ T.adj u w

theorem king_chicken (T : Tournament V) (v : V) (h : ∀ w : V, w ≠ v → T.adj v w) : ∀ w : V, w ≠ v → reachableInTwoSteps T v w := by
  intro w hw
  by_cases hvw : T.adj v w
  · exfalso; exact T.irreflexive v (h w hw)
  · have hwv : T.adj w v := T.total w v (by intro h_eq; exact hw (h_eq.symm);) (fun h_neq => h_neq (Ne.symm hw))
    exact False.elim (T.irreflexive w (h w hw))

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse
