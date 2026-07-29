import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure InvariantBasisPackage where
  contactManifold : Type u
  jetSpace : Type v
  prolongation : Type w
  invariantFunctions : Prop
  invariantDerivatives : Prop
  basisComplete : Prop

structure InvariantBasisEvidence (I : InvariantBasisPackage) where
  invariantFunctionsClosed : I.invariantFunctions
  invariantDerivativesClosed : I.invariantDerivatives
  basisCompleteClosed : I.basisComplete

def InvariantBasisClosed (I : InvariantBasisPackage) : Prop :=
  I.invariantFunctions ∧ I.invariantDerivatives ∧ I.basisComplete

theorem invariant_basis_closed_from_evidence (I : InvariantBasisPackage) (E : InvariantBasisEvidence I) :
    InvariantBasisClosed I := by
  exact And.intro E.invariantFunctionsClosed (And.intro E.invariantDerivativesClosed E.basisCompleteClosed)

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
