import DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.HolonomyInvariantPackage

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure LocalTheoryPackage {P : CurvatureInvariantPackage} {C : ConnectionPackage P} {I : IndexTheoremPackage P C} {H : HolonomyInvariantPackage P C I} where
  jetBundles : Prop
  differentialInvariants : Prop
  movingFrame : Prop
  equivalenceProblem : Prop
  jetBundlesTerm : jetBundles
  differentialInvariantsTerm : differentialInvariants
  movingFrameTerm : movingFrame
  equivalenceProblemTerm : equivalenceProblem

structure LocalTheoryEvidence {P : CurvatureInvariantPackage} {C : ConnectionPackage P} {I : IndexTheoremPackage P C} {H : HolonomyInvariantPackage P C I} (L : LocalTheoryPackage P C I H) where
  jetBundlesClosed : L.jetBundles
  differentialInvariantsClosed : L.differentialInvariants
  movingFrameClosed : L.movingFrame
  equivalenceProblemClosed : L.equivalenceProblem

def LocalTheoryClosed {P : CurvatureInvariantPackage} {C : ConnectionPackage P} {I : IndexTheoremPackage P C} {H : HolonomyInvariantPackage P C I} (L : LocalTheoryPackage P C I H) : Prop :=
  L.jetBundles ∧ L.differentialInvariants ∧ L.movingFrame ∧ L.equivalenceProblem

theorem local_theory_closed_from_evidence {P : CurvatureInvariantPackage} {C : ConnectionPackage P} {I : IndexTheoremPackage P C} {H : HolonomyInvariantPackage P C I} (L : LocalTheoryPackage P C I H) (E : LocalTheoryEvidence L) :
    LocalTheoryClosed L := by
  exact And.intro E.jetBundlesClosed (And.intro E.differentialInvariantsClosed (And.intro E.movingFrameClosed E.equivalenceProblemClosed))

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
