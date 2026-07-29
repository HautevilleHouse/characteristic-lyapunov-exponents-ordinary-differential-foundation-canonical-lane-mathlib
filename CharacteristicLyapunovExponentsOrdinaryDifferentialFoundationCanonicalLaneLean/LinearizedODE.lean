import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure LinearizedODEPackage where
  baseSystem : Type u
  tangentSpace : Type v
  linearFlow : Type w
  cocycleProperty : Prop
  differentiability : Prop

structure LinearizedODEEvidence (L : LinearizedODEPackage) where
  cocyclePropertyClosed : L.cocycleProperty
  differentiabilityClosed : L.differentiability

def LinearizedODEClosed (L : LinearizedODEPackage) : Prop :=
  L.cocycleProperty ∧ L.differentiability

theorem linearized_ode_closed_from_evidence (L : LinearizedODEPackage) (E : LinearizedODEEvidence L) : LinearizedODEClosed L :=
  And.intro E.cocyclePropertyClosed E.differentiabilityClosed

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse