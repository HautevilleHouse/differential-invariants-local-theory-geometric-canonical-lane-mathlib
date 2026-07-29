import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.DifferentialInvariantDefinition
import HautevilleHouse.DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.MovingFrame

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure MaurerCartanForm (G : LieGroup) where
  underlyingSpace : Type
  leftInvariant : Prop
  valuesInLieAlgebra : Prop

structure MaurerCartanFormEvidence (G : LieGroup) (MC : MaurerCartanForm G) where
  leftInvariantClosed : MC.leftInvariant
  valuesInLieAlgebraClosed : MC.valuesInLieAlgebra

def MaurerCartanFormClosed (G : LieGroup) (MC : MaurerCartanForm G) : Prop :=
  MC.leftInvariant ∧ MC.valuesInLieAlgebra

theorem maurer_cartan_form_closed_from_evidence (G : LieGroup) (MC : MaurerCartanForm G) \
    (E : MaurerCartanFormEvidence G MC) : MaurerCartanFormClosed G MC :=
  And.intro E.leftInvariantClosed E.valuesInLieAlgebraClosed

structure InvariantDerivation (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) where
  vectorField : Chart.domain → ℝ
  invariantUnderGroup : Prop
  derivationProperties : Prop

structure InvariantDerivationEvidence (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) \
    (D : InvariantDerivation M Chart) where
  invariantUnderGroupClosed : D.invariantUnderGroup
  derivationPropertiesClosed : D.derivationProperties

def InvariantDerivationClosed (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) \
    (D : InvariantDerivation M Chart) : Prop :=
  D.invariantUnderGroup ∧ D.derivationProperties

theorem invariant_derivation_closed_from_evidence (M : Type) [TopologicalSpace M] \
    (Chart : LocalCoordinateChart) (D : InvariantDerivation M Chart) \
    (E : InvariantDerivationEvidence M Chart D) : InvariantDerivationClosed M Chart D :=
  And.intro E.invariantUnderGroupClosed E.derivationPropertiesClosed

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
