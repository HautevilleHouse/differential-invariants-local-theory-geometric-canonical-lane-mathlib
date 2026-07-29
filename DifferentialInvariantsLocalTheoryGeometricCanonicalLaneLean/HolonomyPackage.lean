import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometric

structure HolonomyPackage where
  parallelTransportMap : Type u
  holonomyGroupComputed : Type v
  ambroiseSingerTheorem : Prop
  reducedHolonomy : Prop
  localHolonomy : Prop
  curvatureHolonomyRelation : Prop
  symmetricReduction : Prop
  deRhamDecomposition : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  ambroiseSingerTheoremClosed : H.ambroiseSingerTheorem
  reducedHolonomyClosed : H.reducedHolonomy
  localHolonomyClosed : H.localHolonomy
  curvatureHolonomyRelationClosed : H.curvatureHolonomyRelation
  symmetricReductionClosed : H.symmetricReduction
  deRhamDecompositionClosed : H.deRhamDecomposition

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.ambroiseSingerTheorem ∧ H.reducedHolonomy ∧ H.localHolonomy ∧ H.curvatureHolonomyRelation ∧ H.symmetricReduction ∧ H.deRhamDecomposition

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.ambroiseSingerTheoremClosed (And.intro E.reducedHolonomyClosed (And.intro E.localHolonomyClosed (And.intro E.curvatureHolonomyRelationClosed (And.intro E.symmetricReductionClosed E.deRhamDecompositionClosed))))

end DifferentialInvariantsLocalTheoryGeometric
end HautevilleHouse