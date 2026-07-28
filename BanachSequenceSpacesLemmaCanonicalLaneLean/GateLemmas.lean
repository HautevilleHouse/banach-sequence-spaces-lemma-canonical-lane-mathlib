import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.normInequalitySatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse