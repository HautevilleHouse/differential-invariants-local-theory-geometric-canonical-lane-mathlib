import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure DifferentialAdmittedObject where
  manifold : Type
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  metric : Type
  connection : Type
  curvatureTensor : Type
  invariantsClassified : Prop
  invariantsClassifiedTerm : invariantsClassified

def DifferentialInvariantWitnessClosed (O : DifferentialAdmittedObject) : Prop :=
  O.invariantsClassified

structure AdmissibleClass where
  object : DifferentialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DifferentialInvariantWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
