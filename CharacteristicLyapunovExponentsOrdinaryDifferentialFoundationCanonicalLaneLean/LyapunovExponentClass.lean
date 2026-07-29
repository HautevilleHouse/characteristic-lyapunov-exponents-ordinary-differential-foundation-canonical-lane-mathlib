import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure LyapunovExponentPackage where
  baseSystem : Type u
  timeDomain : Type v
  linearizedFlow : Type w
  topLyapunovExponent : Type x
  exponentialGrowthRate : Prop
  limitExists : Prop
  independenceOfMetric : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  exponentialGrowthRateClosed : L.exponentialGrowthRate
  limitExistsClosed : L.limitExists
  independenceOfMetricClosed : L.independenceOfMetric

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.exponentialGrowthRate ∧ L.limitExists ∧ L.independenceOfMetric

theorem lyapunov_exponent_closed_from_evidence
    (L : LyapunovExponentPackage) (E : LyapunovExponentEvidence L) :
    LyapunovExponentClosed L := by
  exact And.intro E.exponentialGrowthRateClosed
    (And.intro E.limitExistsClosed E.independenceOfMetricClosed)

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse