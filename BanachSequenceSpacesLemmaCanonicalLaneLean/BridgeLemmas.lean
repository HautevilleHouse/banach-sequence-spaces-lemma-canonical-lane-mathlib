import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let ℓp := A.sequenceSpace
  ℓp.completeness

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.completenessTestimony

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse