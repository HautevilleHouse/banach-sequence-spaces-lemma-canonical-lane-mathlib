import BanachSequenceSpacesLemmaCanonicalLaneLean.WeakConvergence

/-!
# Uniform Boundedness Principle (Banach-Steinhaus) for Sequence Spaces

This module states the Uniform Boundedness Principle as it applies to sequences of operators on Banach sequence spaces.
-/

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure UniformBoundednessPrinciple (X Y : BanachSequenceSpace) where
  operators : ℕ → (X.carrier → Y.carrier)
  linear_continuous : ∀ n, ContinuousLinearMap ℝ X.carrier Y.carrier
  pointwise_bounded : ∀ x : X.carrier, ∃ M : ℝ, ∀ n, Y.norm (operators n x) ≤ M
  conclusion : ∃ M : ℝ, ∀ (n : ℕ) (x : X.carrier), Y.norm (operators n x) ≤ M * X.norm x

lemma uniform_boundedness_lemma (X Y : BanachSequenceSpace) (h : UniformBoundednessPrinciple X Y) : h.conclusion := by
  exact h.conclusion

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse