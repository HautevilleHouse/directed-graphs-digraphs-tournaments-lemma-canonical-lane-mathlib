import DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.TournamentStructure

/-!
# Hamiltonian Cycle in Tournaments Package
-/

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure HamiltonianCyclePackage {T : TournamentPackage} where
  cycleExists : Prop
  pathExtensionLemma : Prop
  cycleConstruction : Prop
  reorientationLimit : Prop

structure HamiltonianCycleEvidence {T : TournamentPackage} (H : HamiltonianCyclePackage T) where
  cycleExistsClosed : H.cycleExists
  pathExtensionLemmaClosed : H.pathExtensionLemma
  cycleConstructionClosed : H.cycleConstruction
  reorientationLimitClosed : H.reorientationLimit

def HamiltonianCycleClosed {T : TournamentPackage} (H : HamiltonianCyclePackage T) : Prop :=
  H.cycleExists ∧ H.pathExtensionLemma ∧ H.cycleConstruction ∧ H.reorientationLimit

theorem hamiltonian_cycle_closed_from_evidence
    {T : TournamentPackage} (H : HamiltonianCyclePackage T) (E : HamiltonianCycleEvidence H) :
    HamiltonianCycleClosed H := by
  exact And.intro E.cycleExistsClosed
    (And.intro E.pathExtensionLemmaClosed
      (And.intro E.cycleConstructionClosed E.reorientationLimitClosed))

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse