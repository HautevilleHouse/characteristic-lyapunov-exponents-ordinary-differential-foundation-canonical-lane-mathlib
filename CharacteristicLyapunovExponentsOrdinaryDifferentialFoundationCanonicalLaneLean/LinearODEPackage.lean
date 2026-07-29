import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean

structure LinearODEPackage where
  stateSpace : Type u
  timeDomain : Type v
  fundamentalMatrix : timeDomain → (stateSpace → stateSpace)
  generator : timeDomain → (stateSpace → stateSpace)
  wellPosed : Prop
  existenceAndUniqueness : Prop

structure LinearODEEvidence (L : LinearODEPackage) where
  wellPosedClosed : L.wellPosed
  existenceAndUniquenessClosed : L.existenceAndUniqueness

def LinearODEClosed (L : LinearODEPackage) : Prop :=
  L.wellPosed ∧ L.existenceAndUniqueness

theorem linear_ode_closed_from_evidence (L : LinearODEPackage) (E : LinearODEEvidence L) :
    LinearODEClosed L :=
  And.intro E.wellPosedClosed E.existenceAndUniquenessClosed

end CharacteristicLyapunovExponentsOrdinaryDifferentialFoundationCanonicalLaneLean
end HautevilleHouse