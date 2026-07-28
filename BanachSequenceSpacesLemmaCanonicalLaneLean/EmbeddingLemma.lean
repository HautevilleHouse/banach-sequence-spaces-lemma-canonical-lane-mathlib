import canonicalLaneMathlib.AdmissibleClass
import BanachSequenceSpacesLemmaCanonicalLaneLean.SequenceSpacePackage

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure EmbeddingLemmaPackage (S : SequenceSpacePackage) where
  source : S.spaceType → ℕ → ℝ
  target : Type u
  targetNorm : target → ℝ
  embeddingIsLinear : Prop
  embeddingIsBounded : Prop
  embeddingIsInjective : Prop
  linearTerm : embeddingIsLinear
  boundedTerm : embeddingIsBounded
  injectiveTerm : embeddingIsInjective

structure EmbeddingLemmaEvidence {S : SequenceSpacePackage} (E : EmbeddingLemmaPackage S) where
  linearClosed : E.embeddingIsLinear
  boundedClosed : E.embeddingIsBounded
  injectiveClosed : E.embeddingIsInjective

def EmbeddingLemmaClosed {S : SequenceSpacePackage} (E : EmbeddingLemmaPackage S) : Prop :=
  E.embeddingIsLinear ∧ E.embeddingIsBounded ∧ E.embeddingIsInjective

theorem embedding_lemma_closed_from_evidence {S : SequenceSpacePackage}
    (E : EmbeddingLemmaPackage S) (Ev : EmbeddingLemmaEvidence E) : EmbeddingLemmaClosed E := by
  exact And.intro Ev.linearClosed (And.intro Ev.boundedClosed Ev.injectiveClosed)

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse