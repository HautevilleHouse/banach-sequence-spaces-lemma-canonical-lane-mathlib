import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure SequenceSpace where
  carrier : Type
  norm : carrier → ℝ
  completeness : Prop

structure AdmissibleClass where
  sequenceSpace : SequenceSpace
  completenessTestimony : sequenceSpace.completeness
  normInequalitySatisfied : Prop
  remainderRecorded : Prop
  gateWitness : normInequalitySatisfied ∨ remainderRecorded

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse