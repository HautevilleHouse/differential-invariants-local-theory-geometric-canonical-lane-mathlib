import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.DifferentialInvariantDefinition
import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.MovingFrame

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure SignatureVariety where
  ambientSpace : Type
  definingEquations : List (ℝ → ℝ)
  dimension : Nat

structure SignatureMap (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) where
  source : Chart.domain
  target : SignatureVariety
  mapping : Chart.domain → SignatureVariety.ambientSpace
  differentialConstraints : Prop

structure SignatureMapEvidence (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) \
    (S : SignatureMap M Chart) where
  differentialConstraintsClosed : S.differentialConstraints

def SignatureMapClosed (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) \
    (S : SignatureMap M Chart) : Prop :=
  S.differentialConstraints

theorem signature_map_closed_from_evidence (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) \
    (S : SignatureMap M Chart) (E : SignatureMapEvidence M Chart S) :
    SignatureMapClosed M Chart S :=
  E.differentialConstraintsClosed

structure SyzygyModule where
  generatingSet : List (DifferentialInvariant ℝ Chart)
  relations : Prop
  finiteGenerated : Prop

structure SyzygyModuleEvidence (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) \
    (Z : SyzygyModule M Chart) where
  relationsClosed : Z.relations
  finiteGeneratedClosed : Z.finiteGenerated

def SyzygyModuleClosed (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) \
    (Z : SyzygyModule M Chart) : Prop :=
  Z.relations ∧ Z.finiteGenerated

theorem syzygy_module_closed_from_evidence (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) \
    (Z : SyzygyModule M Chart) (E : SyzygyModuleEvidence M Chart Z) :
    SyzygyModuleClosed M Chart Z :=
  And.intro E.relationsClosed E.finiteGeneratedClosed

structure HilbertBasisCondition where
  setOfInvariants : Type
  generatesInvariantRing : Prop
  finiteDimensional : Prop

structure HilbertBasisConditionEvidence (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) \
    (H : HilbertBasisCondition M Chart) where
  generatesInvariantRingClosed : H.generatesInvariantRing
  finiteDimensionalClosed : H.finiteDimensional

def HilbertBasisConditionClosed (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) \
    (H : HilbertBasisCondition M Chart) : Prop :=
  H.generatesInvariantRing ∧ H.finiteDimensional

theorem hilbert_basis_condition_closed_from_evidence (M : Type) [TopologicalSpace M] \
    (Chart : LocalCoordinateChart) (H : HilbertBasisCondition M Chart) \
    (E : HilbertBasisConditionEvidence M Chart H) :
    HilbertBasisConditionClosed M Chart H :=
  And.intro E.generatesInvariantRingClosed E.finiteDimensionalClosed

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
