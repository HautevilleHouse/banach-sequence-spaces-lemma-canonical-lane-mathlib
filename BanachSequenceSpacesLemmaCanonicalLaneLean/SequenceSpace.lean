import HautevilleHouse.BanachSequenceSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure SequenceSpacePackage where
  carrier : Type
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  normedSpace : NormedSpace ℝ carrier
  schauderBasis : List carrier
  basisComplete : Prop

structure SequenceSpaceEvidence (S : SequenceSpacePackage) where
  normedAddCommGroupClosed : NormedAddCommGroup S.carrier
  normedSpaceClosed : NormedSpace ℝ S.carrier
  basisCompleteClosed : S.basisComplete

def SequenceSpaceClosed (S : SequenceSpacePackage) : Prop :=
  NormedAddCommGroup S.carrier ∧ NormedSpace ℝ S.carrier ∧ S.basisComplete

theorem sequence_space_closed_from_evidence (S : SequenceSpacePackage)
    (E : SequenceSpaceEvidence S) : SequenceSpaceClosed S := by
  exact And.intro E.normedAddCommGroupClosed
    (And.intro E.normedSpaceClosed E.basisCompleteClosed)

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse