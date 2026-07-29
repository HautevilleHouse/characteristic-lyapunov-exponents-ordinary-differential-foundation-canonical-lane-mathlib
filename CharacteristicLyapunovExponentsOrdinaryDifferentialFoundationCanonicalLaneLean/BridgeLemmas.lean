import canonicalLaneMathlib.AdmissibleClass
import CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.LyapunovExponentAdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  -- In this domain, the bridge is the closure of the Lyapunov witness.
  lyapunovWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- The object's conclusion provides the witness closure.
  exact A.object.conclusion

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse