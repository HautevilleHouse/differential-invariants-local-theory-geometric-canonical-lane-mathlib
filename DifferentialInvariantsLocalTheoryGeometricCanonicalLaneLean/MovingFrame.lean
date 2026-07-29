import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.DifferentialInvariantDefinition

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure LieGroup where
  underlyingManifold : Type
  product : underlyingManifold → underlyingManifold → underlyingManifold
  identity : underlyingManifold
  inverse : underlyingManifold → underlyingManifold
  smoothStructure : Prop

structure GroupAction (G : LieGroup) (M : Type) [TopologicalSpace M] where
  action : G.underlyingManifold → M → M
  smoothAction : Prop

structure MovingFrame (G : LieGroup) (M : Type) [TopologicalSpace M] (Action : GroupAction G M) \
    (Chart : LocalCoordinateChart) where
  lift : Chart.domain → G.underlyingManifold
  equivariance : Prop
  normalizationConditions : Prop

structure MovingFrameEvidence (G : LieGroup) (M : Type) [TopologicalSpace M] \
    (Action : GroupAction G M) (Chart : LocalCoordinateChart) \
    (F : MovingFrame G M Action Chart) where
  equivarianceClosed : F.equivariance
  normalizationClosed : F.normalizationConditions

def MovingFrameClosed (G : LieGroup) (M : Type) [TopologicalSpace M] \
    (Action : GroupAction G M) (Chart : LocalCoordinateChart) \
    (F : MovingFrame G M Action Chart) : Prop :=
  F.equivariance ∧ F.normalizationConditions

theorem moving_frame_closed_from_evidence (G : LieGroup) (M : Type) [TopologicalSpace M] \
    (Action : GroupAction G M) (Chart : LocalCoordinateChart) \
    (F : MovingFrame G M Action Chart) (E : MovingFrameEvidence G M Action Chart F) :
    MovingFrameClosed G M Action Chart F :=
  And.intro E.equivarianceClosed E.normalizationClosed

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
