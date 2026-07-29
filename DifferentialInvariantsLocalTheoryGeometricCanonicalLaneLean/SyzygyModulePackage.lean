import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure SyzygyModulePackage where
  generatorRelations : Type u
  compatibilityConditions : Type v
  resolutionFinite : Prop
  generatorsComputed : Prop
  relationsComputed : Prop
  compatibilityClosed : Prop
  resolutionFiniteClosed : Prop

structure SyzygyModuleEvidence (S : SyzygyModulePackage) where
  generatorsComputedClosed : S.generatorsComputed
  relationsComputedClosed : S.relationsComputed
  compatibilityClosedClosed : S.compatibilityClosed
  resolutionFiniteClosedClosed : S.resolutionFiniteClosed

def SyzygyModuleClosed (S : SyzygyModulePackage) : Prop :=
  S.generatorsComputed ∧ S.relationsComputed ∧
  S.compatibilityClosed ∧ S.resolutionFiniteClosed

theorem syzygy_module_closed_from_evidence
    (S : SyzygyModulePackage) (E : SyzygyModuleEvidence S) :
    SyzygyModuleClosed S := by
  exact And.intro E.generatorsComputedClosed
    (And.intro E.relationsComputedClosed
      (And.intro E.compatibilityClosedClosed
        E.resolutionFiniteClosedClosed))

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
