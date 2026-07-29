import DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure ConnectionPackage {P : CurvatureInvariantPackage} where
  leviCivitaConnection : Prop
  christoffelSymbols : Prop
  geodesicEquation : Prop
  parallelTransport : Prop
  holonomyGroup : Type u
  holonomyInvariant : Prop
  leviCivitaConnectionTerm : leviCivitaConnection
  christoffelSymbolsTerm : christoffelSymbols
  geodesicEquationTerm : geodesicEquation
  parallelTransportTerm : parallelTransport
  holonomyInvariantTerm : holonomyInvariant

structure ConnectionEvidence {P : CurvatureInvariantPackage} (C : ConnectionPackage P) where
  leviCivitaConnectionClosed : C.leviCivitaConnection
  christoffelSymbolsClosed : C.christoffelSymbols
  geodesicEquationClosed : C.geodesicEquation
  parallelTransportClosed : C.parallelTransport
  holonomyInvariantClosed : C.holonomyInvariant

def ConnectionClosed {P : CurvatureInvariantPackage} (C : ConnectionPackage P) : Prop :=
  C.leviCivitaConnection ∧ C.christoffelSymbols ∧ C.geodesicEquation ∧ C.parallelTransport ∧ C.holonomyInvariant

theorem connection_closed_from_evidence {P : CurvatureInvariantPackage} (C : ConnectionPackage P) (E : ConnectionEvidence C) :
    ConnectionClosed C := by
  exact And.intro E.leviCivitaConnectionClosed (And.intro E.christoffelSymbolsClosed (And.intro E.geodesicEquationClosed (And.intro E.parallelTransportClosed E.holonomyInvariantClosed)))

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse
