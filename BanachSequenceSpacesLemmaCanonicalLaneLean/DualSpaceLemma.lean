import BanachSequenceSpacesLemmaCanonicalLaneLean.SequenceSpaceDefinitions

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure DualSpacePackage (X : BanachSequenceSpace) where
  dual : DualSpace X
  dualNorm_formula : Prop
  dualComplete : Prop

structure DualSpaceEvidence (X : BanachSequenceSpace) (D : DualSpacePackage X) where
  dualNorm_formulaClosed : D.dualNorm_formula
  dualCompleteClosed : D.dualComplete

def DualSpaceClosed (X : BanachSequenceSpace) (D : DualSpacePackage X) : Prop :=
  D.dualNorm_formula ∧ D.dualComplete

theorem dual_space_closed_from_evidence (X : BanachSequenceSpace) (D : DualSpacePackage X) (E : DualSpaceEvidence X D) :
    DualSpaceClosed X D := by
  exact And.intro E.dualNorm_formulaClosed E.dualCompleteClosed

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse