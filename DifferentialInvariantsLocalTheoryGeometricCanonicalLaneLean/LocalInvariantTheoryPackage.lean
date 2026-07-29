import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometric

structure LocalInvariantTheoryPackage where
  jets : Type u
  prolongations : Type v
  contactStructure : Type w
  invarianceGroup : Type x
  differentialInvariant : Type y
  hilbertBasisTheorem : Prop
  lieBracketInvariance : Prop
  characteristicSpace : Prop

structure LocalInvariantTheoryEvidence (L : LocalInvariantTheoryPackage) where
  hilbertBasisTheoremClosed : L.hilbertBasisTheorem
  lieBracketInvarianceClosed : L.lieBracketInvariance
  characteristicSpaceClosed : L.characteristicSpace

def LocalInvariantTheoryClosed (L : LocalInvariantTheoryPackage) : Prop :=
  L.hilbertBasisTheorem ∧ L.lieBracketInvariance ∧ L.characteristicSpace

theorem local_invariant_theory_closed_from_evidence (L : LocalInvariantTheoryPackage) (E : LocalInvariantTheoryEvidence L) :
    LocalInvariantTheoryClosed L := by
  exact And.intro E.hilbertBasisTheoremClosed (And.intro E.lieBracketInvarianceClosed E.characteristicSpaceClosed)

end DifferentialInvariantsLocalTheoryGeometric
end HautevilleHouse