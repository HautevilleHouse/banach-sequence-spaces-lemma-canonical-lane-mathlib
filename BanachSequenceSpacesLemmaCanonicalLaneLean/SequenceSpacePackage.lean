import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure SequenceSpacePackage where
  p : ℝ
  spaceType : Type u
  norm : spaceType → ℝ
  completeness : Prop
  p_norm_defined : Prop
  completenessTerm : completeness
  p_norm_definedTerm : p_norm_defined

structure SequenceSpaceEvidence (S : SequenceSpacePackage) where
  completenessClosed : S.completeness
  p_norm_definedClosed : S.p_norm_defined

def SequenceSpaceClosed (S : SequenceSpacePackage) : Prop :=
  S.completeness ∧ S.p_norm_defined

theorem sequence_space_closed_from_evidence (S : SequenceSpacePackage)
    (E : SequenceSpaceEvidence S) : SequenceSpaceClosed S := by
  exact And.intro E.completenessClosed E.p_norm_definedClosed

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse