import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure ConnectionCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  tangentBundle : Type v
  connection : Type w
  curvatureForm : Type x
  smoothManifold : Prop
  connectionSmooth : Prop
  torsionFree : Prop
  curvatureBianchiIdentity : Prop
  firstChernClassDefined : Prop

structure ConnectionCurvatureEvidence (C : ConnectionCurvaturePackage) where
  smoothManifoldClosed : C.smoothManifold
  connectionSmoothClosed : C.connectionSmooth
  torsionFreeClosed : C.torsionFree
  curvatureBianchiIdentityClosed : C.curvatureBianchiIdentity
  firstChernClassDefinedClosed : C.firstChernClassDefined

def ConnectionCurvatureClosed (C : ConnectionCurvaturePackage) : Prop :=
  C.smoothManifold ∧ C.connectionSmooth ∧ C.torsionFree ∧
  C.curvatureBianchiIdentity ∧ C.firstChernClassDefined

theorem connection_curvature_closed_from_evidence
    (C : ConnectionCurvaturePackage) (E : ConnectionCurvatureEvidence C) :
    ConnectionCurvatureClosed C := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.connectionSmoothClosed
      (And.intro E.torsionFreeClosed
        (And.intro E.curvatureBianchiIdentityClosed
          E.firstChernClassDefinedClosed)))

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
