import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure LyapunovAdmittedObject where
  system : Type u
  flow : Type v
  lyapunovSpectrumDefined : Prop
  conclusion : lyapunovSpectrumDefined

def LyapunovWitnessClosed (O : LyapunovAdmittedObject) : Prop :=
  O.lyapunovSpectrumDefined

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse
