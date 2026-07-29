import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure LocalNormalFormsPackage where
  cotangentBundle : Type u
  symplecticStructure : Type v
  canonicalCoordinates : Type w
  darbouxTheorem : Prop
  normalFormExist : Prop
  transitionFunctionsSmooth : Prop

structure LocalNormalFormsEvidence (L : LocalNormalFormsPackage) where
  darbouxTheoremClosed : L.darbouxTheorem
  normalFormExistClosed : L.normalFormExist
  transitionFunctionsSmoothClosed : L.transitionFunctionsSmooth

def LocalNormalFormsClosed (L : LocalNormalFormsPackage) : Prop :=
  L.darbouxTheorem ∧ L.normalFormExist ∧ L.transitionFunctionsSmooth

theorem local_normal_forms_closed_from_evidence (L : LocalNormalFormsPackage) (Ev : LocalNormalFormsEvidence L) :
    LocalNormalFormsClosed L := by
  exact And.intro Ev.darbouxTheoremClosed (And.intro Ev.normalFormExistClosed Ev.transitionFunctionsSmoothClosed)

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
