import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure ProlongationPackage where
  prolongedSpace : Type u
  prolongedGroupAction : Type v
  invariantDerivatives : Type w
  contactStructure : Type x
  prolongationFiniteOrder : Nat
  originalSpaceIncluded : Prop
  groupActionProlonged : Prop
  invariantDerivativesDefined : Prop
  contactStructurePreserved : Prop

structure ProlongationEvidence (P : ProlongationPackage) where
  originalSpaceIncludedClosed : P.originalSpaceIncluded
  groupActionProlongedClosed : P.groupActionProlonged
  invariantDerivativesDefinedClosed : P.invariantDerivativesDefined
  contactStructurePreservedClosed : P.contactStructurePreserved

def ProlongationClosed (P : ProlongationPackage) : Prop :=
  P.originalSpaceIncluded ∧ P.groupActionProlonged ∧
  P.invariantDerivativesDefined ∧ P.contactStructurePreserved

theorem prolongation_closed_from_evidence
    (P : ProlongationPackage) (E : ProlongationEvidence P) :
    ProlongationClosed P := by
  exact And.intro E.originalSpaceIncludedClosed
    (And.intro E.groupActionProlongedClosed
      (And.intro E.invariantDerivativesDefinedClosed
        E.contactStructurePreservedClosed))

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
