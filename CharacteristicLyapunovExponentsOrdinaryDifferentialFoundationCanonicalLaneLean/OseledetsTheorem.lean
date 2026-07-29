import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.LyapunovExponentDefinition

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure OseledetsTheoremPackage (L : LyapunovExponentDefinition) where
  multiplicativeErgodicTheorem : Prop
  lyapunovSpectrum : Type u
  filtrationOfStableSubspaces : Prop
  sumOfExponentsFormula : Prop

structure OseledetsTheoremEvidence {L : LyapunovExponentDefinition} (O : OseledetsTheoremPackage L) where
  multiplicativeErgodicTheoremClosed : O.multiplicativeErgodicTheorem
  lyapunovSpectrumClosed : True
  filtrationOfStableSubspacesClosed : O.filtrationOfStableSubspaces
  sumOfExponentsFormulaClosed : O.sumOfExponentsFormula

def OseledetsTheoremClosed {L : LyapunovExponentDefinition} (O : OseledetsTheoremPackage L) : Prop :=
  O.multiplicativeErgodicTheorem ∧ O.filtrationOfStableSubspaces ∧ O.sumOfExponentsFormula

theorem oseledets_theorem_closed_from_evidence {L : LyapunovExponentDefinition} (O : OseledetsTheoremPackage L) (E : OseledetsTheoremEvidence O) : OseledetsTheoremClosed O :=
  And.intro E.multiplicativeErgodicTheoremClosed (And.intro E.filtrationOfStableSubspacesClosed E.sumOfExponentsFormulaClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse