import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure SymmetryClassificationPackage where
  lieAlgebra : Type u
  symmetryGroup : Type v
  groupAction : Type w
  lieDetected : Prop
  symmetryGroupProper : Prop
  invariantsClassified : Prop

structure SymmetryClassificationEvidence (S : SymmetryClassificationPackage) where
  lieDetectedClosed : S.lieDetected
  symmetryGroupProperClosed : S.symmetryGroupProper
  invariantsClassifiedClosed : S.invariantsClassified

def SymmetryClassificationClosed (S : SymmetryClassificationPackage) : Prop :=
  S.lieDetected ∧ S.symmetryGroupProper ∧ S.invariantsClassified

theorem symmetry_classification_closed_from_evidence (S : SymmetryClassificationPackage) (E : SymmetryClassificationEvidence S) :
    SymmetryClassificationClosed S := by
  exact And.intro E.lieDetectedClosed (And.intro E.symmetryGroupProperClosed E.invariantsClassifiedClosed)

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
