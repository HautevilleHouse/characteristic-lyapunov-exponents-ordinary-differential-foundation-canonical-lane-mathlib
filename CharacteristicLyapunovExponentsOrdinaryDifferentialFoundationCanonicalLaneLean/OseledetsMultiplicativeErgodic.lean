import canonicalLaneMathlib.AdmissibleClass
import CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean.LyapunovExponentDefined

/-!
# Oseledets Multiplicative Ergodic Theorem Package

This module records the structure for the Oseledets multiplicative ergodic
theorem, which guarantees the existence of Lyapunov exponents and the splitting
of the tangent space into Oseledets subspaces. It builds on the Lyapunov
exponent defined package.
-/

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

open scoped Real

structure OseledetsMultiplicativeErgodicPackage {F : CharacteristicLyapunovODEFoundation}
    {LPkg : CharacteristicLyapunovODEClosed F} {LDef : LyapunovExponentDefinedPackage LPkg} where
  fullMeasureSet : Set F.stateSpace
  filtrationOfSubspaces : F.stateSpace → ℕ → Submodule ℝ (F.stateSpace → F.stateSpace)
  lyapunovSpectrum : F.stateSpace → Finset ℝ
  multiciplities : F.stateSpace → ℝ → ℕ
  oseledetsSplitting : Prop
  exponentialConvergence : Prop
  filtrationIsInvariant : Prop
  splittingIsMeasurable : Prop
  spectrumCountsMultiplicity : Prop

structure OseledetsMultiplicativeErgodicEvidence {F : CharacteristicLyapunovODEFoundation}
    {LPkg : CharacteristicLyapunovODEClosed F} {LDef : LyapunovExponentDefinedPackage LPkg}
    (O : OseledetsMultiplicativeErgodicPackage LDef) where
  oseledetsSplittingClosed : O.oseledetsSplitting
  exponentialConvergenceClosed : O.exponentialConvergence
  filtrationIsInvariantClosed : O.filtrationIsInvariant
  splittingIsMeasurableClosed : O.splittingIsMeasurable
  spectrumCountsMultiplicityClosed : O.spectrumCountsMultiplicity

def OseledetsMultiplicativeErgodicClosed {F : CharacteristicLyapunovODEFoundation}
    {LPkg : CharacteristicLyapunovODEClosed F} {LDef : LyapunovExponentDefinedPackage LPkg}
    (O : OseledetsMultiplicativeErgodicPackage LDef) : Prop :=
  O.oseledetsSplitting ∧ O.exponentialConvergence ∧ O.filtrationIsInvariant ∧
  O.splittingIsMeasurable ∧ O.spectrumCountsMultiplicity

theorem oseledets_multiplicative_ergodic_closed_from_evidence
    {F : CharacteristicLyapunovODEFoundation} {LPkg : CharacteristicLyapunovODEClosed F}
    {LDef : LyapunovExponentDefinedPackage LPkg} (O : OseledetsMultiplicativeErgodicPackage LDef)
    (E : OseledetsMultiplicativeErgodicEvidence O) : OseledetsMultiplicativeErgodicClosed O := by
  exact And.intro E.oseledetsSplittingClosed
    (And.intro E.exponentialConvergenceClosed
      (And.intro E.filtrationIsInvariantClosed
        (And.intro E.splittingIsMeasurableClosed E.spectrumCountsMultiplicityClosed)))

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse
