import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure MovingFramePackage where
  frameFields : List Type
  dualOneForms : List Type
  structureEquations : Prop
  pullbackMapDefined : Prop
  adaptationGroup : Prop
  frameFieldsSmooth : Prop
  dualOneFormsSmooth : Prop
  structureEquationsClosed : Prop
  pullbackMapClosed : Prop
  adaptationGroupClosed : Prop

structure MovingFrameEvidence (M : MovingFramePackage) where
  frameFieldsSmoothClosed : M.frameFieldsSmooth
  dualOneFormsSmoothClosed : M.dualOneFormsSmooth
  structureEquationsClosedClosed : M.structureEquationsClosed
  pullbackMapClosedClosed : M.pullbackMapClosed
  adaptationGroupClosedClosed : M.adaptationGroupClosed

def MovingFrameClosed (M : MovingFramePackage) : Prop :=
  M.frameFieldsSmooth ∧ M.dualOneFormsSmooth ∧
  M.structureEquationsClosed ∧ M.pullbackMapClosed ∧
  M.adaptationGroupClosed

theorem moving_frame_closed_from_evidence
    (M : MovingFramePackage) (E : MovingFrameEvidence M) :
    MovingFrameClosed M := by
  exact And.intro E.frameFieldsSmoothClosed
    (And.intro E.dualOneFormsSmoothClosed
      (And.intro E.structureEquationsClosedClosed
        (And.intro E.pullbackMapClosedClosed
          E.adaptationGroupClosedClosed)))

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
