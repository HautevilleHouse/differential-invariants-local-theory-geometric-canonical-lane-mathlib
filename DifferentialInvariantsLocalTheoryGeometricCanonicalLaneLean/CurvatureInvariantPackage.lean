import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure CurvatureInvariantPackage where
  riemannTensor : Type u
  ricciTensor : Type v
  scalarCurvature : Type w
  sectionalCurvature : Type x
  weylTensor : Type y
  riemannSymmetriesSatisfied : Prop
  ricciDerivedFromRiemann : Prop
  scalarDerivedFromRicci : Prop
  sectionalDerived : Prop
  weylVanishesInDimensionThree : Prop

structure CurvatureInvariantEvidence (C : CurvatureInvariantPackage) where
  riemannSymmetriesSatisfiedClosed : C.riemannSymmetriesSatisfied
  ricciDerivedFromRiemannClosed : C.ricciDerivedFromRiemann
  scalarDerivedFromRicciClosed : C.scalarDerivedFromRicci
  sectionalDerivedClosed : C.sectionalDerived
  weylVanishesInDimensionThreeClosed : C.weylVanishesInDimensionThree

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.riemannSymmetriesSatisfied ∧ C.ricciDerivedFromRiemann ∧
  C.scalarDerivedFromRicci ∧ C.sectionalDerived ∧
  C.weylVanishesInDimensionThree

theorem curvature_invariant_closed_from_evidence
    (C : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence C) :
    CurvatureInvariantClosed C := by
  exact And.intro E.riemannSymmetriesSatisfiedClosed
    (And.intro E.ricciDerivedFromRiemannClosed
      (And.intro E.scalarDerivedFromRicciClosed
        (And.intro E.sectionalDerivedClosed
          E.weylVanishesInDimensionThreeClosed)))

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
