import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure LinearizedCocyclePackage where
  baseFlow : Type u
  linearization : Type v
  cocycleProperty : Prop
  chainRuleCompatibility : Prop
  invertibility : Prop

structure LinearizedCocycleEvidence (C : LinearizedCocyclePackage) where
  cocyclePropertyClosed : C.cocycleProperty
  chainRuleCompatibilityClosed : C.chainRuleCompatibility
  invertibilityClosed : C.invertibility

def LinearizedCocycleClosed (C : LinearizedCocyclePackage) : Prop :=
  C.cocycleProperty ∧ C.chainRuleCompatibility ∧ C.invertibility

theorem linearized_cocycle_closed_from_evidence
    (C : LinearizedCocyclePackage) (E : LinearizedCocycleEvidence C) :
    LinearizedCocycleClosed C := by
  exact And.intro E.cocyclePropertyClosed
    (And.intro E.chainRuleCompatibilityClosed E.invertibilityClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse