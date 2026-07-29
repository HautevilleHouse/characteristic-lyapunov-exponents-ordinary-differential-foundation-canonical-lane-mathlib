import canonicalLaneMathlib.AdmissibleClass
import CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.LyapunovExponentDefinition

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure ContinuityLyapunovSpectrumPackage {L : LyapunovExponentPackage} where
  parameterSpace : Type u
  continuousDependence : Prop
  perturbationBound : Prop
  spectralGapPreserved : Prop
  exponentSeparation : Prop

def ContinuityLyapunovSpectrumClosed {L : LyapunovExponentPackage} (C : ContinuityLyapunovSpectrumPackage L) : Prop :=
  C.continuousDependence ∧ C.perturbationBound ∧ C.exponentSeparation

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse