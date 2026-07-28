import canonicalLaneMathlib.AdmissibleClass
import BanachSequenceSpacesLemmaCanonicalLaneLean.SequenceSpacePackage

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure SchauderBasisPackage (S : SequenceSpacePackage) where
  basis : ℕ → S.spaceType
  expansionExists : ∀ x : S.spaceType, ∃ (a : ℕ → ℝ), x = ∑' n, a n • basis n
  uniqueness : Prop
  expansionExistsTerm : expansionExists
  uniquenessTerm : uniqueness

structure SchauderBasisEvidence {S : SequenceSpacePackage} (B : SchauderBasisPackage S) where
  expansionClosed : B.expansionExists
  uniquenessClosed : B.uniqueness

def SchauderBasisClosed {S : SequenceSpacePackage} (B : SchauderBasisPackage S) : Prop :=
  B.expansionExists ∧ B.uniqueness

theorem schauder_basis_closed_from_evidence {S : SequenceSpacePackage}
    (B : SchauderBasisPackage S) (Ev : SchauderBasisEvidence B) : SchauderBasisClosed B := by
  exact And.intro Ev.expansionClosed Ev.uniquenessClosed

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse