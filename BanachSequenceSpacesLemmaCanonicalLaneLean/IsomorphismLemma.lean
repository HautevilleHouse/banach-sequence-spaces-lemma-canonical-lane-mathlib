import canonicalLaneMathlib.AdmissibleClass
import BanachSequenceSpacesLemmaCanonicalLaneLean.SequenceSpacePackage

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure IsomorphismLemmaPackage (S T : SequenceSpacePackage) where
  iso : S.spaceType ≃ T.spaceType
  isoLinear : Prop
  isoBounded : Prop
  isoInverseBounded : Prop
  linearTerm : isoLinear
  boundedTerm : isoBounded
  inverseBoundedTerm : isoInverseBounded

structure IsomorphismLemmaEvidence {S T : SequenceSpacePackage} (I : IsomorphismLemmaPackage S T) where
  linearClosed : I.isoLinear
  boundedClosed : I.isoBounded
  inverseBoundedClosed : I.isoInverseBounded

def IsomorphismLemmaClosed {S T : SequenceSpacePackage} (I : IsomorphismLemmaPackage S T) : Prop :=
  I.isoLinear ∧ I.isoBounded ∧ I.isoInverseBounded

theorem isomorphism_lemma_closed_from_evidence {S T : SequenceSpacePackage}
    (I : IsomorphismLemmaPackage S T) (Ev : IsomorphismLemmaEvidence I) : IsomorphismLemmaClosed I := by
  exact And.intro Ev.linearClosed (And.intro Ev.boundedClosed Ev.inverseBoundedClosed)

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse