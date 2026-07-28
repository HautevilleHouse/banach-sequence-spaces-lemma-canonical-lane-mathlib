import BanachSequenceSpacesLemmaCanonicalLaneLean.SequenceSpaceDefinitions

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure CompletenessPackage (X : BanachSequenceSpace) where
  complete : Prop
  sequenceCauchy : Prop
  sequenceConvergent : Prop
  completenessEquivalent : complete ↔ (sequenceCauchy → sequenceConvergent)

structure CompletenessEvidence (X : BanachSequenceSpace) (C : CompletenessPackage X) where
  completeClosed : C.complete
  sequenceCauchyClosed : C.sequenceCauchy
  sequenceConvergentClosed : C.sequenceConvergent

def CompletenessClosed (X : BanachSequenceSpace) (C : CompletenessPackage X) : Prop :=
  C.complete ∧ C.sequenceCauchy ∧ C.sequenceConvergent

theorem completeness_closed_from_evidence (X : BanachSequenceSpace) (C : CompletenessPackage X) (E : CompletenessEvidence X C) :
    CompletenessClosed X C := by
  exact And.intro E.completeClosed (And.intro E.sequenceCauchyClosed E.sequenceConvergentClosed)

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse