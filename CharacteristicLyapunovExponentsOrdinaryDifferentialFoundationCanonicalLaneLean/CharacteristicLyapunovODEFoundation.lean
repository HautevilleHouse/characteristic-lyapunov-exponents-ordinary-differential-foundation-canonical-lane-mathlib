import canonicalLaneMathlib.AdmissibleClass

/-!
# Characteristic Lyapunov Exponents Ordinary Differential Foundation Package

This module defines the foundational package for the analysis of characteristic
Lyapunov exponents in ordinary differential equations. It frames the central
objects: the ODE system, the linearized flow, the Lyapunov exponent, and the
admissible-class bridge that closes the foundational layer.
-/

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure CharacteristicLyapunovODEFoundation where
  odesystem : Type u
  stateSpace : Type v
  timeDomain : Type w
  flowMap : timeDomain → stateSpace → stateSpace
  linearizedFlow : timeDomain → stateSpace → (stateSpace → stateSpace)
  lyapunovExponent : stateSpace → ℝ
  odeIsDefined : Prop
  flowIsContinuous : Prop
  linearizedFlowIsContinuous : Prop
  lyapunovExponentIsDefined : Prop
  drivingEquation : String
  initialCondition : stateSpace → Prop
  spectrumAtPoint : stateSpace → Set ℝ
  dominantLyapunovExponentExists : Prop

structure CharacteristicLyapunovODEEvidence (F : CharacteristicLyapunovODEFoundation) where
  odeIsDefinedClosed : F.odeIsDefined
  flowIsContinuousClosed : F.flowIsContinuous
  linearizedFlowIsContinuousClosed : F.linearizedFlowIsContinuous
  lyapunovExponentIsDefinedClosed : F.lyapunovExponentIsDefined
  dominantLyapunovExponentExistsClosed : F.dominantLyapunovExponentExists
  initialConditionSatisfied : F.initialCondition

def CharacteristicLyapunovODEClosed (F : CharacteristicLyapunovODEFoundation) : Prop :=
  F.odeIsDefined ∧ F.flowIsContinuous ∧ F.linearizedFlowIsContinuous ∧
  F.lyapunovExponentIsDefined ∧ F.dominantLyapunovExponentExists

theorem characteristic_lyapunov_ode_closed_from_evidence
    (F : CharacteristicLyapunovODEFoundation) (E : CharacteristicLyapunovODEEvidence F) :
    CharacteristicLyapunovODEClosed F := by
  exact And.intro E.odeIsDefinedClosed
    (And.intro E.flowIsContinuousClosed
      (And.intro E.linearizedFlowIsContinuousClosed
        (And.intro E.lyapunovExponentIsDefinedClosed
          E.dominantLyapunovExponentExistsClosed)))

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse
