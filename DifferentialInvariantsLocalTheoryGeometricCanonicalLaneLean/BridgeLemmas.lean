import DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferentialInvariantWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.invariantsClassifiedTerm

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
