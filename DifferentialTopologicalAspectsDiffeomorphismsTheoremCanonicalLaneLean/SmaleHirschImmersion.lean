import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure SmaleHirschImmersionPackage where
  sourceManifold : Type u
  targetManifold : Type v
  immersionCondition : Prop
  homotopyPrincipleHolds : Prop
  microflexibility : Prop

structure SmaleHirschImmersionEvidence (S : SmaleHirschImmersionPackage) where
  immersionConditionClosed : S.immersionCondition
  homotopyPrincipleHoldsClosed : S.homotopyPrincipleHolds
  microflexibilityClosed : S.microflexibility

def SmaleHirschImmersionClosed (S : SmaleHirschImmersionPackage) : Prop :=
  S.immersionCondition ∧ S.homotopyPrincipleHolds ∧ S.microflexibility

theorem smale_hirsch_immersion_closed_from_evidence (S : SmaleHirschImmersionPackage) (E : SmaleHirschImmersionEvidence S) :
    SmaleHirschImmersionClosed S := by
  exact And.intro E.immersionConditionClosed (And.intro E.homotopyPrincipleHoldsClosed E.microflexibilityClosed)

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse