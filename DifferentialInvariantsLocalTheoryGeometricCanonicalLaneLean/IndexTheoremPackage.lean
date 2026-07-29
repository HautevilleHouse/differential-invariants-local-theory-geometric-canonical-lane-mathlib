import DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.ConnectionTheoryPackage

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure IndexTheoremPackage {P : CurvatureInvariantPackage} {C : ConnectionPackage P} where
  ellipticComplex : Prop
  indexFormula : Prop
  chernClasses : Prop
  eulerCharacteristic : Prop
  signatureFormula : Prop
  ellipticComplexTerm : ellipticComplex
  indexFormulaTerm : indexFormula
  chernClassesTerm : chernClasses
  eulerCharacteristicTerm : eulerCharacteristic
  signatureFormulaTerm : signatureFormula

structure IndexTheoremEvidence {P : CurvatureInvariantPackage} {C : ConnectionPackage P} (I : IndexTheoremPackage P C) where
  ellipticComplexClosed : I.ellipticComplex
  indexFormulaClosed : I.indexFormula
  chernClassesClosed : I.chernClasses
  eulerCharacteristicClosed : I.eulerCharacteristic
  signatureFormulaClosed : I.signatureFormula

def IndexTheoremClosed {P : CurvatureInvariantPackage} {C : ConnectionPackage P} (I : IndexTheoremPackage P C) : Prop :=
  I.ellipticComplex ∧ I.indexFormula ∧ I.chernClasses ∧ I.eulerCharacteristic ∧ I.signatureFormula

theorem index_theorem_closed_from_evidence {P : CurvatureInvariantPackage} {C : ConnectionPackage P} (I : IndexTheoremPackage P C) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.ellipticComplexClosed (And.intro E.indexFormulaClosed (And.intro E.chernClassesClosed (And.intro E.eulerCharacteristicClosed E.signatureFormulaClosed)))

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
