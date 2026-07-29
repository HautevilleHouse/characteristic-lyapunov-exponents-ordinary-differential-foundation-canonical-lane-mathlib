import canonicalLaneMathlib.AdmissibleClass
import CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.LyapunovExponentDefinition

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure RegularityCocyclePackage {L : LyapunovExponentPackage} where
  cocycleProperty : Prop
  measurableCocycle : Prop
  integrableCocycle : Prop
  subadditiveBound : Prop
  kingsmanSubadditiveErgodicApplied : Prop

def RegularityCocycleClosed {L : LyapunovExponentPackage} (R : RegularityCocyclePackage L) : Prop :=
  R.cocycleProperty ∧ R.measurableCocycle ∧ R.integrableCocycle ∧ R.subadditiveBound

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse