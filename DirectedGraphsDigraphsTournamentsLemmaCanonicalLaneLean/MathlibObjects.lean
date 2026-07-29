import DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DigraphSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DigraphAdmittedObject where
  space : DigraphSpace
  finiteDigraph : Prop
  tournament : Prop
  hamiltonianCycle : Prop
  conclusion : hamiltonianCycle

structure DigraphEndgameState where
  object : DigraphAdmittedObject

def DigraphWitnessClosed (O : DigraphAdmittedObject) : Prop :=
  O.hamiltonianCycle

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse