import BanachSequenceSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure LpSpace (p : ℝ≥0∞) where
  carrier : Type
  norm : carrier → ℝ
  norm_nonneg : ∀ x, 0 ≤ norm x
  norm_zero : norm 0 = 0
  norm_smul : ∀ (c : ℝ) (x : carrier), norm (c • x) = |c| * norm x
  norm_triangle : ∀ x y, norm (x + y) ≤ norm x + norm y
  complete : Prop
  p_norm_formula : ∀ x, norm x = (∑' n, |x n|^p) ^ (1/p)  -- placeholder

structure SchauderBasis (X : BanachSequenceSpace) where
  basisVectors : ℕ → X.carrier
  representation : ∀ x : X.carrier, ∃! (c : ℕ → ℝ), x = ∑' n, c n • basisVectors n

structure DualSpace (X : BanachSequenceSpace) where
  dualCarrier : Type
  dualNorm : dualCarrier → ℝ
  dualComplete : Prop
  isDual : Prop

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse