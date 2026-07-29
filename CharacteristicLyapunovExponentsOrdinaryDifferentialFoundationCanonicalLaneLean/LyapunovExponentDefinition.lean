import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure LyapunovExponentDefinition where
  system : Type u
  timeDomain : Type v
  solution : system -> timeDomain -> system
  linearization : Type w
  exponentialGrowthRate : Prop
  topLyapunovExponentDefined : Prop
  bottomLyapunovExponentDefined : Prop

structure LyapunovExponentDefinitionEvidence (L : LyapunovExponentDefinition) where
  exponentialGrowthRateClosed : L.exponentialGrowthRate
  topLyapunovExponentDefinedClosed : L.topLyapunovExponentDefined
  bottomLyapunovExponentDefinedClosed : L.bottomLyapunovExponentDefined

def LyapunovExponentDefinitionClosed (L : LyapunovExponentDefinition) : Prop :=
  L.exponentialGrowthRate ∧ L.topLyapunovExponentDefined ∧ L.bottomLyapunovExponentDefined

theorem lyapunov_exponent_definition_closed_from_evidence (L : LyapunovExponentDefinition) (E : LyapunovExponentDefinitionEvidence L) : LyapunovExponentDefinitionClosed L :=
  And.intro E.exponentialGrowthRateClosed (And.intro E.topLyapunovExponentDefinedClosed E.bottomLyapunovExponentDefinedClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse