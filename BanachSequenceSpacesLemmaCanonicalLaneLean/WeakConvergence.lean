import BanachSequenceSpacesLemmaCanonicalLaneLean.BanachSequenceSpace

/-!
# Weak Convergence in Sequence Spaces

This module defines weak convergence for sequences in Banach spaces.
-/

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure WeakConvergence (X : BanachSequenceSpace) (x : SequenceInBanach X) (L : X.carrier) where
  bounded : ∃ M : ℝ, ∀ n : ℕ, X.norm (x.seq n) ≤ M
  pointwiseConvergence : ∀ f : X.carrier → ℝ, ContinuousLinearMap ℝ ℝ f → Filter.Tendsto (fun n : ℕ => f (x.seq n)) Filter.atTop (nhds (f L))

structure NormConvergence (X : BanachSequenceSpace) (x : SequenceInBanach X) (L : X.carrier) where
  limit : Filter.Tendsto (fun n : ℕ => X.norm (x.seq n - L)) Filter.atTop (nhds 0)

theorem weak_limit_unique (X : BanachSequenceSpace) (x : SequenceInBanach X) (L1 L2 : X.carrier)
    (h1 : WeakConvergence X x L1) (h2 : WeakConvergence X x L2) : L1 = L2 := by
  sorry

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse