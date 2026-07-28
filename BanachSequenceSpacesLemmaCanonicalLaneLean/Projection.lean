import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

def banachSequenceProjection : Projection BanachSequenceEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem banach_sequence_projection_idempotent (x : BanachSequenceEndgameState) :
    banachSequenceProjection.toFun (banachSequenceProjection.toFun x) = banachSequenceProjection.toFun x := by
  exact banachSequenceProjection.idempotent x

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse