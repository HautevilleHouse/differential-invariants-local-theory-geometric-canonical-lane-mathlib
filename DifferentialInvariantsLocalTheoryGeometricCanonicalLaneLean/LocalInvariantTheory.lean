import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean

structure LocalInvariantTheoryPackage where
  jetBundle : Type u
  contactStructure : Type v
  invariantDifferentialOperators : Type w
  generatingSet : Prop
  bracketClosure : Prop
  generatingSetTerm : generatingSet
  bracketClosureTerm : bracketClosure

structure LocalInvariantTheoryEvidence (L : LocalInvariantTheoryPackage) where
  generatingSetClosed : L.generatingSet
  bracketClosureClosed : L.bracketClosure

def LocalInvariantTheoryClosed (L : LocalInvariantTheoryPackage) : Prop :=
  L.generatingSet ∧ L.bracketClosure

theorem local_invariant_theory_closed_from_evidence
    (L : LocalInvariantTheoryPackage) (E : LocalInvariantTheoryEvidence L) :
    LocalInvariantTheoryClosed L := by
  exact And.intro E.generatingSetClosed E.bracketClosureClosed

end DifferentialInvariantsLocalTheoryGeometricCanonicalLaneLean
end HautevilleHouse