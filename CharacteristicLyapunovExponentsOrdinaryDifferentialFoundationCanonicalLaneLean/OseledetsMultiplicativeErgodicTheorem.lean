import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure OseledetsPackage where
  dynamicalSystem : Type u
  invariantMeasure : Type v
  cocycle : Type w
  oseledetsSplitting : Prop
  lyapunovSpectrumExists : Prop
  flagStructure : Prop

structure OseledetsEvidence (O : OseledetsPackage) where
  oseledetsSplittingClosed : O.oseledetsSplitting
  lyapunovSpectrumExistsClosed : O.lyapunovSpectrumExists
  flagStructureClosed : O.flagStructure

def OseledetsClosed (O : OseledetsPackage) : Prop :=
  O.oseledetsSplitting ∧ O.lyapunovSpectrumExists ∧ O.flagStructure

theorem oseledets_closed_from_evidence
    (O : OseledetsPackage) (E : OseledetsEvidence O) : OseledetsClosed O := by
  exact And.intro E.oseledetsSplittingClosed
    (And.intro E.lyapunovSpectrumExistsClosed E.flagStructureClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse