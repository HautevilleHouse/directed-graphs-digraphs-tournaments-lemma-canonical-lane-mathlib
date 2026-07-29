import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Set.Basic

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure TournamentObject where
  vertexSet : Type
  adjacency : vertexSet → vertexSet → Prop
  irreflexive : ∀ v, ¬ adjacency v v
  antisymmetric : ∀ u v, adjacency u v → ¬ adjacency v u
  total : ∀ u v, u ≠ v → (adjacency u v ∨ adjacency v u)

structure TournamentAdmissibleObject where
  object : TournamentObject
  transitiveSubsetExists : Prop
  hamiltonianPathExists : Prop
  conclusion : transitiveSubsetExists ∧ hamiltonianPathExists

structure AdmissibleClass where
  object : TournamentAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse