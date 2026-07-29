import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.LinearizedODE

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure LyapunovRegularityPackage {L : LinearizedODEPackage} where
  integrabilityCondition : Prop
  upperTriangularization : Prop
  regularityIndex : Nat
  exponentialDichotomy : Prop

structure LyapunovRegularityEvidence {L : LinearizedODEPackage} (R : LyapunovRegularityPackage L) where
  integrabilityConditionClosed : R.integrabilityCondition
  upperTriangularizationClosed : R.upperTriangularization
  exponentialDichotomyClosed : R.exponentialDichotomy

def LyapunovRegularityClosed {L : LinearizedODEPackage} (R : LyapunovRegularityPackage L) : Prop :=
  R.integrabilityCondition ∧ R.upperTriangularization ∧ R.exponentialDichotomy

theorem lyapunov_regularity_closed_from_evidence {L : LinearizedODEPackage} (R : LyapunovRegularityPackage L) (E : LyapunovRegularityEvidence R) : LyapunovRegularityClosed R :=
  And.intro E.integrabilityConditionClosed (And.intro E.upperTriangularizationClosed E.exponentialDichotomyClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse