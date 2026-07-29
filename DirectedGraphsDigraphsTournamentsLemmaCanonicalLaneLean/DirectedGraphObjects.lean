import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure Digraph where
  Vertex : Type
  Arc : Vertex → Vertex → Prop
  irreflexive : ∀ v, ¬ Arc v v

structure Tournament where
  digraph : Digraph
  total : ∀ u v : digraph.Vertex, u ≠ v → (digraph.Arc u v ∨ digraph.Arc v u)

structure TournamentAdmittedObject where
  tournament : Tournament
  property : Prop
  conclusion : property

def TournamentWitnessClosed (O : TournamentAdmittedObject) : Prop :=
  O.conclusion

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse