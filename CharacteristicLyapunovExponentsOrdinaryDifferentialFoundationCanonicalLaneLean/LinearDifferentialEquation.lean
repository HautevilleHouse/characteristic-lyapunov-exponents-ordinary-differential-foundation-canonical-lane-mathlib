import canonicalLaneMathlib.AdmissibleClass
import CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.LyapunovExponentDefinition

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure LinearDifferentialEquationPackage {L : LyapunovExponentPackage} where
  matrixFamily : timeDomain → Matrix ℝ ℝ ℝ
  fundamentalSolution : Type u
  solutionRegularity : Prop
  growthRateComputed : Prop
  exponentialDichotomy : Prop

def LinearDifferentialEquationClosed {L : LyapunovExponentPackage} (D : LinearDifferentialEquationPackage L) : Prop :=
  D.solutionRegularity ∧ D.growthRateComputed ∧ D.exponentialDichotomy

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse