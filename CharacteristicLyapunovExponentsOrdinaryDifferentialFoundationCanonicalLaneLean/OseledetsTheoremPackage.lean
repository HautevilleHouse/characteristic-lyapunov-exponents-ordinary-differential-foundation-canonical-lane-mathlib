import canonicalLaneMathlib.AdmissibleClass
import CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.LinearODEPackage
import CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.LyapunovExponentDefinition

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure OseledetsTheoremPackage {L : LinearODEPackage} (D : LyapunovExponentDefinition L) where
  ergodicMeasure : Type u
  multiplicativeErgodicTheorem : Prop
  lyapunovSpectrumExists : Prop
  lyapunovExponentsDefined : Prop
  oseledetsSplitting : Prop

structure OseledetsTheoremEvidence {L : LinearODEPackage} {D : LyapunovExponentDefinition L} (O : OseledetsTheoremPackage D) where
  multiplicativeErgodicTheoremClosed : O.multiplicativeErgodicTheorem
  lyapunovSpectrumExistsClosed : O.lyapunovSpectrumExists
  lyapunovExponentsDefinedClosed : O.lyapunovExponentsDefined
  oseledetsSplittingClosed : O.oseledetsSplitting

def OseledetsTheoremClosed {L : LinearODEPackage} {D : LyapunovExponentDefinition L} (O : OseledetsTheoremPackage D) : Prop :=
  O.multiplicativeErgodicTheorem ∧ O.lyapunovSpectrumExists ∧ O.lyapunovExponentsDefined ∧ O.oseledetsSplitting

theorem oseledets_theorem_closed_from_evidence {L : LinearODEPackage} {D : LyapunovExponentDefinition L} (O : OseledetsTheoremPackage D) (E : OseledetsTheoremEvidence O) :
    OseledetsTheoremClosed O :=
  And.intro E.multiplicativeErgodicTheoremClosed
    (And.intro E.lyapunovSpectrumExistsClosed
      (And.intro E.lyapunovExponentsDefinedClosed E.oseledetsSplittingClosed))

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse