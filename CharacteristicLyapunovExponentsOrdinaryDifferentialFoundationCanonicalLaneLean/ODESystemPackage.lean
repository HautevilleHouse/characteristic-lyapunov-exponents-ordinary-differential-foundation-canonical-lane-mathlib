import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure ODESystem where
  stateSpace : Type u
  vectorField : stateSpace → stateSpace
  flowMap : ℝ → stateSpace → stateSpace
  flowDefined : Prop
  flowSmooth : Prop

structure ODESystemEvidence (O : ODESystem) where
  flowDefinedClosed : O.flowDefined
  flowSmoothClosed : O.flowSmooth

def ODESystemClosed (O : ODESystem) : Prop :=
  O.flowDefined ∧ O.flowSmooth

theorem ode_system_closed_from_evidence (O : ODESystem)
    (E : ODESystemEvidence O) : ODESystemClosed O := by
  exact And.intro E.flowDefinedClosed E.flowSmoothClosed

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse