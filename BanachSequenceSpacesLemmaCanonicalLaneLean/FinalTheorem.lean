import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

def ConstrainedBanachSequenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem banach_sequence_endgame (A : AdmissibleClass) : ConstrainedBanachSequenceClosure A :=
  by
    exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse