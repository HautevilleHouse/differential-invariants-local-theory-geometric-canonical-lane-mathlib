import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure MovingFramePackage where
  manifold : Type u
  frameBundle : Type v
  coframeBundle : Type w
  adaptedFrame : Prop
  dualFrame : Prop
  structureEquations : Prop

structure MovingFrameEvidence (M : MovingFramePackage) where
  adaptedFrameClosed : M.adaptedFrame
  dualFrameClosed : M.dualFrame
  structureEquationsClosed : M.structureEquations

def MovingFrameClosed (M : MovingFramePackage) : Prop :=
  M.adaptedFrame ∧ M.dualFrame ∧ M.structureEquations

theorem moving_frame_closed_from_evidence (M : MovingFramePackage) (E : MovingFrameEvidence M) :
    MovingFrameClosed M := by
  exact And.intro E.adaptedFrameClosed (And.intro E.dualFrameClosed E.structureEquationsClosed)

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
