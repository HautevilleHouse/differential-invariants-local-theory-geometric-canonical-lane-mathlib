import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure EquivariantCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  gStructure : Type v
  connection : Type w
  curvatureForm : Type x
  equivariantAction : Prop
  curvatureTransformationLaw : Prop
  invariantPolynomial : Prop
  equivariantActionTerm : equivariantAction
  curvatureTransformationLawTerm : curvatureTransformationLaw
  invariantPolynomialTerm : invariantPolynomial

structure EquivariantCurvatureEvidence (P : EquivariantCurvaturePackage) where
  equivariantActionClosed : P.equivariantAction
  curvatureTransformationLawClosed : P.curvatureTransformationLaw
  invariantPolynomialClosed : P.invariantPolynomial

def EquivariantCurvatureClosed (P : EquivariantCurvaturePackage) : Prop :=
  P.equivariantAction ∧ P.curvatureTransformationLaw ∧ P.invariantPolynomial

theorem equivariant_curvature_closed_from_evidence
    (P : EquivariantCurvaturePackage) (E : EquivariantCurvatureEvidence P) :
    EquivariantCurvatureClosed P := by
  exact And.intro E.equivariantActionClosed
    (And.intro E.curvatureTransformationLawClosed E.invariantPolynomialClosed)

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse