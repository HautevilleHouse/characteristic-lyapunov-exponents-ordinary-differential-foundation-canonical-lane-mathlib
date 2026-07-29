import canonicalLaneMathlib.AdmissibleClass
import CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.CharacteristicLyapunovODEFoundation

/-!
# Lyapunov Exponent Defined Package

This module records the definition and proof obligations for the characteristic
Lyapunov exponent for a given ODE foundation. It includes the exponential growth
rate, the limit superior definition, and the regularity conditions needed for
the exponent to exist.
-/

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure LyapunovExponentDefinedPackage {F : CharacteristicLyapunovODEFoundation}
    (LPkg : CharacteristicLyapunovODEClosed F) where
  observable : F.stateSpace → Type u
  growthRate : F.stateSpace → ℝ
  limitSuperiorExists : Prop
  growthRateExtremal : Prop
  regularityOfOseledets : Prop
  continuousDependence : Prop
  domainOfExponent : Set F.stateSpace
  fullMeasureCondition : Prop
  integrabilityCondition : Prop

structure LyapunovExponentDefinedEvidence {F : CharacteristicLyapunovODEFoundation}
    {LPkg : CharacteristicLyapunovODEClosed F} (L : LyapunovExponentDefinedPackage LPkg) where
  limitSuperiorExistsClosed : L.limitSuperiorExists
  growthRateExtremalClosed : L.growthRateExtremal
  regularityOfOseledetsClosed : L.regularityOfOseledets
  continuousDependenceClosed : L.continuousDependence
  fullMeasureConditionClosed : L.fullMeasureCondition
  integrabilityConditionClosed : L.integrabilityCondition

def LyapunovExponentDefinedClosed {F : CharacteristicLyapunovODEFoundation}
    {LPkg : CharacteristicLyapunovODEClosed F} (L : LyapunovExponentDefinedPackage LPkg) : Prop :=
  L.limitSuperiorExists ∧ L.growthRateExtremal ∧ L.regularityOfOseledets ∧
  L.continuousDependence ∧ L.fullMeasureCondition ∧ L.integrabilityCondition

theorem lyapunov_exponent_defined_closed_from_evidence
    {F : CharacteristicLyapunovODEFoundation} {LPkg : CharacteristicLyapunovODEClosed F}
    (L : LyapunovExponentDefinedPackage LPkg) (E : LyapunovExponentDefinedEvidence L) :
    LyapunovExponentDefinedClosed L := by
  exact And.intro E.limitSuperiorExistsClosed
    (And.intro E.growthRateExtremalClosed
      (And.intro E.regularityOfOseledetsClosed
        (And.intro E.continuousDependenceClosed
          (And.intro E.fullMeasureConditionClosed E.integrabilityConditionClosed))))

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse
