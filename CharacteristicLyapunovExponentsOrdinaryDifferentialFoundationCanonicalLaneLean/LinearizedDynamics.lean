import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure LinearizedDynamicsPackage where
  baseSystem : ODESystem
  tangentBundle : Type u
  linearizedVectorField : baseSystem.stateSpace → (tangentBundle → tangentBundle)
  linearizedFlow : ℝ → baseSystem.stateSpace → (tangentBundle → tangentBundle)
  linearizationDefined : Prop
  linearizationSmooth : Prop

structure LinearizedDynamicsEvidence (L : LinearizedDynamicsPackage) where
  linearizationDefinedClosed : L.linearizationDefined
  linearizationSmoothClosed : L.linearizationSmooth

def LinearizedDynamicsClosed (L : LinearizedDynamicsPackage) : Prop :=
  L.linearizationDefined ∧ L.linearizationSmooth

theorem linearized_dynamics_closed_from_evidence (L : LinearizedDynamicsPackage)
    (E : LinearizedDynamicsEvidence L) : LinearizedDynamicsClosed L := by
  exact And.intro E.linearizationDefinedClosed E.linearizationSmoothClosed

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse