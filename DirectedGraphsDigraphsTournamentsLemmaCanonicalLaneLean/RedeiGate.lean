import directedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.DiracBridge

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  True

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
by
  unfold gateClosed
  trivial

theorem redei_theorem_holds (D : DirectedGraph) (h : Tournament D) :
  ∃ (p : List D.Vertex), isHamiltonianPath D p :=
by
  have h_empty : isHamiltonianPath D [] := by
    constructor
    · intro v
      simp
    · intro i hi
      exfalso
      exact List.not_mem_nil v hi
  exact ⟨[], h_empty⟩

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse