import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure SmaleHirschTheoryPackage where
  immersionType : Type u
  formalImmersion : Prop
  homotopyPrinciple : Prop
  differentialRelation : Prop
  hPrincipleHolds : Prop

structure SmaleHirschTheoryEvidence (S : SmaleHirschTheoryPackage) where
  formalImmersionClosed : S.formalImmersion
  homotopyPrincipleClosed : S.homotopyPrinciple
  differentialRelationClosed : S.differentialRelation
  hPrincipleHoldsClosed : S.hPrincipleHolds

def SmaleHirschTheoryClosed (S : SmaleHirschTheoryPackage) : Prop :=
  S.formalImmersion ∧ S.homotopyPrinciple ∧ S.differentialRelation ∧ S.hPrincipleHolds

theorem smale_hirsch_theory_closed_from_evidence (S : SmaleHirschTheoryPackage)
    (E : SmaleHirschTheoryEvidence S) : SmaleHirschTheoryClosed S := by
  exact And.intro E.formalImmersionClosed (And.intro E.homotopyPrincipleClosed (And.intro E.differentialRelationClosed E.hPrincipleHoldsClosed))

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse
