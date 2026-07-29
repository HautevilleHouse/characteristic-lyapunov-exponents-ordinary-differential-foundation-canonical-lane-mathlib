import canonicalLaneMathlib.AdmissibleClass
import CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.CharacteristicLyapunovODEFoundation
import CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.LyapunovExponentDefined
import CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.OseledetsMultiplicativeErgodic

/-!
# Final Theorem: Characteristic Lyapunov Exponents Ordinary Differential Foundation

This module assembles the admissible-class closure for the characteristic
Lyapunov exponents theory. It defines the constrained Lyapunov closure and
provides the endgame proof that any admissible class bridges and gates the
foundation, the Lyapunov exponent definition, and the Oseledets theorem.
-/

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CharacteristicLyapunovODEClosed (Cast.oderequired A)

def gateClosed (A : AdmissibleClass) : Prop :=
  LyapunovExponentDefinedClosed (Cast.lyapunov A) ∧
  OseledetsMultiplicativeErgodicClosed (Cast.oseledets A)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  characteristic_lyapunov_ode_closed_from_evidence (Cast.oderequired A) (Cast.odeEvidence A)

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  have hLyapunov : LyapunovExponentDefinedClosed (Cast.lyapunov A) :=
    lyapunov_exponent_defined_closed_from_evidence (Cast.lyapunov A) (Cast.lyapunovEvidence A)
  have hOseledets : OseledetsMultiplicativeErgodicClosed (Cast.oseledets A) :=
    oseledets_multiplicative_ergodic_closed_from_evidence (Cast.oseledets A) (Cast.oseledetsEvidence A)
  exact And.intro hLyapunov hOseledets

def ConstrainedLyapunovClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lyapunov_endgame (A : AdmissibleClass) : ConstrainedLyapunovClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse
