import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure EquivariantProlongationPackage where
  groupAction : Type u
  jetBundle : Type v
  prolongedAction : Type w
  actionSmooth : Prop
  prolongationConsistent : Prop
  infinitesimalGenerators : Prop

structure EquivariantProlongationEvidence (E : EquivariantProlongationPackage) where
  actionSmoothClosed : E.actionSmooth
  prolongationConsistentClosed : E.prolongationConsistent
  infinitesimalGeneratorsClosed : E.infinitesimalGenerators

def EquivariantProlongationClosed (E : EquivariantProlongationPackage) : Prop :=
  E.actionSmooth ∧ E.prolongationConsistent ∧ E.infinitesimalGenerators

theorem equivariant_prolongation_closed_from_evidence (E : EquivariantProlongationPackage) (Ev : EquivariantProlongationEvidence E) :
    EquivariantProlongationClosed E := by
  exact And.intro Ev.actionSmoothClosed (And.intro Ev.prolongationConsistentClosed Ev.infinitesimalGeneratorsClosed)

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
