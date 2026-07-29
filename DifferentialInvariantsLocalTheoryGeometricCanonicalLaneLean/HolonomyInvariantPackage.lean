import DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.IndexTheoremPackage

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure HolonomyInvariantPackage {P : CurvatureInvariantPackage} {C : ConnectionPackage P} {I : IndexTheoremPackage P C} where
  holonomyAlgebra : Prop
  ambroseSingerTheorem : Prop
  invariantClassification : Prop
  localHolonomyDetermined : Prop
  holonomyAlgebraTerm : holonomyAlgebra
  ambroseSingerTheoremTerm : ambroseSingerTheorem
  invariantClassificationTerm : invariantClassification
  localHolonomyDeterminedTerm : localHolonomyDetermined

structure HolonomyInvariantEvidence {P : CurvatureInvariantPackage} {C : ConnectionPackage P} {I : IndexTheoremPackage P C} (H : HolonomyInvariantPackage P C I) where
  holonomyAlgebraClosed : H.holonomyAlgebra
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem
  invariantClassificationClosed : H.invariantClassification
  localHolonomyDeterminedClosed : H.localHolonomyDetermined

def HolonomyInvariantClosed {P : CurvatureInvariantPackage} {C : ConnectionPackage P} {I : IndexTheoremPackage P C} (H : HolonomyInvariantPackage P C I) : Prop :=
  H.holonomyAlgebra ∧ H.ambroseSingerTheorem ∧ H.invariantClassification ∧ H.localHolonomyDetermined

theorem holonomy_invariant_closed_from_evidence {P : CurvatureInvariantPackage} {C : ConnectionPackage P} {I : IndexTheoremPackage P C} (H : HolonomyInvariantPackage P C I) (E : HolonomyInvariantEvidence H) :
    HolonomyInvariantClosed H := by
  exact And.intro E.holonomyAlgebraClosed (And.intro E.ambroseSingerTheoremClosed (And.intro E.invariantClassificationClosed E.localHolonomyDeterminedClosed))

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
