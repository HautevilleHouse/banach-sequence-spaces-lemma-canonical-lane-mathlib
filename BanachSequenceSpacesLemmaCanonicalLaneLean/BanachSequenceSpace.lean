import Mathlib.Topology.Basic
import Mathlib.Analysis.NormedSpace.Basic

/-!
# Banach Sequence Spaces

This module defines the structure of Banach sequence spaces, such as ℓ^p spaces.
-/

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure BanachSequenceSpace where
  carrier : Type
  norm : carrier → ℝ
  norm_nonneg : ∀ x : carrier, 0 ≤ norm x
  norm_eq_zero_iff : ∀ x : carrier, norm x = 0 ↔ x = (0 : carrier)
  norm_triangle : ∀ x y : carrier, norm (x + y) ≤ norm x + norm y
  norm_smul : ∀ (α : ℝ) (x : carrier), norm (α • x) = |α| * norm x
  complete : Nonempty (CauchySeq (fun n : ℕ => (0 : carrier)) → ∃ x : carrier, Filter.Tendsto (fun n : ℕ => (0 : carrier)) Filter.atTop (nhds x))
  zero_def : carrier

structure SequenceInBanach (X : BanachSequenceSpace) where
  seq : ℕ → X.carrier

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse