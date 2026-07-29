import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure LyapunovExponentSystem where
  stateType : Type u
  dynamics : stateType → stateType
  linearizedDynamics : stateType → (stateType → stateType)
  lyapunovExponent : stateType → ℝ
  lyapunovExponentDefined : Prop
  lyapunovExponentFinite : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentSystem) where
  lyapunovExponentDefinedClosed : L.lyapunovExponentDefined
  lyapunovExponentFiniteClosed : L.lyapunovExponentFinite

def LyapunovExponentClosed (L : LyapunovExponentSystem) : Prop :=
  L.lyapunovExponentDefined ∧ L.lyapunovExponentFinite

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentSystem)
    (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.lyapunovExponentDefinedClosed E.lyapunovExponentFiniteClosed

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse