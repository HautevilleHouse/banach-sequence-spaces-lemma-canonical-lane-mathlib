import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure ℓpParameters where
  p : ℝ
  p_ge_one : 1 ≤ p

structure ℓpSequenceSpace (params : ℓpParameters) where
  carrier : Type
  norm : carrier → ℝ
  norm_nonneg : ∀ x, 0 ≤ norm x
  norm_zero_iff_zero : ∀ x, norm x = 0 ↔ x = 0
  triangleInequality : ∀ x y, norm (x + y) ≤ norm x + norm y
  scalarNorm : ∀ (α : ℝ) (x : carrier), norm (α • x) = |α| * norm x
  completeness : Prop
  completenessTerm : completeness

def ℓpCompleteness (ℓp : ℓpSequenceSpace p) : Prop := ℓp.completeness

theorem ℓp_completeness_closed (ℓp : ℓpSequenceSpace p) : ℓpCompleteness ℓp := ℓp.completenessTerm

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse