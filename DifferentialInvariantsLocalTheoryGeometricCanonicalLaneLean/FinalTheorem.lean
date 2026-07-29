import canonicalLaneMathlib.AdmissibleClass
import DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.BridgeLemmas
import DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

def ConstrainedDifferentialInvariantClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_differential_invariant_endgame (A : AdmissibleClass) :
    ConstrainedDifferentialInvariantClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse