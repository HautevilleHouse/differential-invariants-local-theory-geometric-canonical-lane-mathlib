import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure LocalCoordinateChart where
  domain : Type
  target : Type
  coordMap : domain → target
  dim : Nat
  smoothness : Prop

structure DifferentialInvariant (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) where
  order : Nat
  expression : Chart.domain → ℝ
  invarianceUnderDiffeo : Prop

structure InvariantSignature where
  order : Nat
  weight : List Int
  rank : Nat

structure JetBundle (M : Type) [TopologicalSpace M] (Chart : LocalCoordinateChart) (k : Nat) where
  coordinates : Type
  projectionToBundle : coordinates → Chart.domain
  jetComponents : Nat

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
