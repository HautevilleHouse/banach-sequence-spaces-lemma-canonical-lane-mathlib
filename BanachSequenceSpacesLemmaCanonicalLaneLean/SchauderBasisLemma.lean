import BanachSequenceSpacesLemmaCanonicalLaneLean.SequenceSpaceDefinitions

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure SchauderBasisPackage (X : BanachSequenceSpace) where
  basis : SchauderBasis X
  basisCoefficients : Prop
  basisExpansionUniqueness : Prop

structure SchauderBasisEvidence (X : BanachSequenceSpace) (B : SchauderBasisPackage X) where
  basisCoefficientsClosed : B.basisCoefficients
  basisExpansionUniquenessClosed : B.basisExpansionUniqueness

def SchauderBasisClosed (X : BanachSequenceSpace) (B : SchauderBasisPackage X) : Prop :=
  B.basisCoefficients ∧ B.basisExpansionUniqueness

theorem schauder_basis_closed_from_evidence (X : BanachSequenceSpace) (B : SchauderBasisPackage X) (E : SchauderBasisEvidence X B) :
    SchauderBasisClosed X B := by
  exact And.intro E.basisCoefficientsClosed E.basisExpansionUniquenessClosed

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse