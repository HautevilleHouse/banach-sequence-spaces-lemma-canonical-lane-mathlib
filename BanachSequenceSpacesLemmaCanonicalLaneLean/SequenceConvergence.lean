import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachSequenceSpacesLemmaCanonicalLaneLean.BanachSequenceSpace

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure SequenceConvergencePackage where
  cauchyCriterion : Prop
  convergenceImpliesCauchy : Prop
  cauchyImpliesConvergentInBanach : Prop

def SequenceConvergenceClosed (S : SequenceConvergencePackage) : Prop :=
  S.cauchyCriterion ∧ S.convergenceImpliesCauchy ∧ S.cauchyImpliesConvergentInBanach

theorem sequence_convergence_closed (S : SequenceConvergencePackage) : SequenceConvergenceClosed S := by
  exact And.intro S.cauchyCriterion (And.intro S.convergenceImpliesCauchy S.cauchyImpliesConvergentInBanach)

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse