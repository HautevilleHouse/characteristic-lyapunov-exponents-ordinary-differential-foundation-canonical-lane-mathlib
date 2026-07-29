import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure MultiplicativeErgodicPackage where
  measurePreservingSystem : Type u
  integrableCocycle : Type v
  existsLyapunovExponents : Prop
  lyapunovExponentsConstant : Prop
  sumOfExponentsConstant : Prop

structure MultiplicativeErgodicEvidence (M : MultiplicativeErgodicPackage) where
  existsLyapunovExponentsClosed : M.existsLyapunovExponents
  lyapunovExponentsConstantClosed : M.lyapunovExponentsConstant
  sumOfExponentsConstantClosed : M.sumOfExponentsConstant

def MultiplicativeErgodicClosed (M : MultiplicativeErgodicPackage) : Prop :=
  M.existsLyapunovExponents ∧ M.lyapunovExponentsConstant ∧ M.sumOfExponentsConstant

theorem multiplicative_ergodic_closed_from_evidence
    (M : MultiplicativeErgodicPackage) (E : MultiplicativeErgodicEvidence M) :
    MultiplicativeErgodicClosed M := by
  exact And.intro E.existsLyapunovExponentsClosed
    (And.intro E.lyapunovExponentsConstantClosed E.sumOfExponentsConstantClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse