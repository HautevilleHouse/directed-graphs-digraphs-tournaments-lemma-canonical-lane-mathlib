import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean

structure ProbabilisticTournament (V : Type u) [Fintype V] where
  p : V → V → ℝ
  symmetric : ∀ v w, p v w = 1 - p w v
  nonnegative : ∀ v w, 0 ≤ p v w ∧ p v w ≤ 1
  identity : ∀ v, p v v = 0

theorem sincov_inequality (T : ProbabilisticTournament V) (x y z : V) : T.p x z ≥ T.p x y + T.p y z - 1 := by
  have h1 : T.p x z - T.p x y = T.p x z * (1 - T.p y z) - T.p x y * (1 - T.p y z) + (T.p x z - T.p x y) * T.p y z := by ring
  have h2 : T.p x z - T.p x y ≥ - (1 - T.p y z) := by
    nlinarith [T.nonnegative x y, T.nonnegative y z, T.nonnegative x z]
  nlinarith

end DirectedGraphsDigraphsTournamentsLemmaCanonicalLaneLean
end HautevilleHouse
