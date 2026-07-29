import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure CartanConnectionPackage where
  principalBundle : Type u
  structureGroup : Type v
  connectionForm : Type w
  curvatureForm : Type x
  solderingForm : Type y
  torsionFree : Prop
  metricCompatible : Prop
  connectionSmooth : Prop

structure CartanConnectionEvidence (C : CartanConnectionPackage) where
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible
  connectionSmoothClosed : C.connectionSmooth

def CartanConnectionClosed (C : CartanConnectionPackage) : Prop :=
  C.torsionFree ∧ C.metricCompatible ∧ C.connectionSmooth

theorem cartan_connection_closed_from_evidence (C : CartanConnectionPackage) (E : CartanConnectionEvidence C) :
    CartanConnectionClosed C := by
  exact And.intro E.torsionFreeClosed (And.intro E.metricCompatibleClosed E.connectionSmoothClosed)

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
