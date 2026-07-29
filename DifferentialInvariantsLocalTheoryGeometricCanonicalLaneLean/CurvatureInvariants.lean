import DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure CurvatureInvariantPackage where
  riemannTensor : Prop
  ricciTensor : Prop
  scalarCurvature : Prop
  weylTensor : Prop
  sectionalCurvatureDetermined : Prop
  riemannTensorTerm : riemannTensor
  ricciTensorTerm : ricciTensor
  scalarCurvatureTerm : scalarCurvature
  weylTensorTerm : weylTensor
  sectionalCurvatureDeterminedTerm : sectionalCurvatureDetermined

structure CurvatureInvariantEvidence (P : CurvatureInvariantPackage) where
  riemannTensorClosed : P.riemannTensor
  ricciTensorClosed : P.ricciTensor
  scalarCurvatureClosed : P.scalarCurvature
  weylTensorClosed : P.weylTensor
  sectionalCurvatureDeterminedClosed : P.sectionalCurvatureDetermined

def CurvatureInvariantClosed (P : CurvatureInvariantPackage) : Prop :=
  P.riemannTensor ∧ P.ricciTensor ∧ P.scalarCurvature ∧ P.weylTensor ∧ P.sectionalCurvatureDetermined

theorem curvature_invariant_closed_from_evidence (P : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence P) :
    CurvatureInvariantClosed P := by
  exact And.intro E.riemannTensorClosed (And.intro E.ricciTensorClosed (And.intro E.scalarCurvatureClosed (And.intro E.weylTensorClosed E.sectionalCurvatureDeterminedClosed)))

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
