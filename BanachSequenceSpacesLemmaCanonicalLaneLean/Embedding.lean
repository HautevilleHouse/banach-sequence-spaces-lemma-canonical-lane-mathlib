import HautevilleHouse.BanachSequenceSpacesLemmaCanonicalLaneLean.SequenceSpace

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure EmbeddingPackage (S T : SequenceSpacePackage) where
  linearMap : S.carrier →ₗ[ℝ] T.carrier
  bounded : Prop
  injective : Prop
  closedRange : Prop

structure EmbeddingEvidence {S T : SequenceSpacePackage}
    (E : EmbeddingPackage S T) where
  boundedClosed : E.bounded
  injectiveClosed : E.injective
  closedRangeClosed : E.closedRange

def EmbeddingClosed {S T : SequenceSpacePackage}
    (E : EmbeddingPackage S T) : Prop :=
  E.bounded ∧ E.injective ∧ E.closedRange

theorem embedding_closed_from_evidence {S T : SequenceSpacePackage}
    (E : EmbeddingPackage S T) (Ev : EmbeddingEvidence E) :
    EmbeddingClosed E := by
  exact And.intro Ev.boundedClosed
    (And.intro Ev.injectiveClosed Ev.closedRangeClosed)

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse