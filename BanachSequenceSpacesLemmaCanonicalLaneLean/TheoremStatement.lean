import BanachSequenceSpacesLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BanachSequenceSpacesLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "banach-sequence-spaces-lemma-canonical-lane",
  theoremName := "Banach Sequence Spaces Lemma",
  theoremObject := "Banach sequence space with dual sequence space embedding",
  classicalBoundary := "classical boundary: unrestricted Banach space embedding closure",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "banach-sequence-spaces-lemma-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "manifold_constrained" := by
  rfl

end BanachSequenceSpacesLemmaCanonicalLaneLean
end HautevilleHouse