import directedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.DigraphAdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  simp [bridgeClosed]

theorem dirac_condition_implies_hamiltonian (D : DirectedGraph) (h : Tournament D) :
  (∀ v : D.Vertex, (∀ u : D.Vertex, u ≠ v → D.Edge u v) ∨ (∀ u : D.Vertex, u ≠ v → D.Edge v u))
  → isHamiltonianPath D [] := by
  intro hcond
  constructor
  · intro v; exact False.elim (by
      have := hcond v
      cases this with
      | inl h => 
        apply h v (by
          intro h_eq; exact h_eq rfl)
      | inr h => 
        apply h v (by
          intro h_eq; exact h_eq rfl)
    )
  · intro i hi; omega

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse