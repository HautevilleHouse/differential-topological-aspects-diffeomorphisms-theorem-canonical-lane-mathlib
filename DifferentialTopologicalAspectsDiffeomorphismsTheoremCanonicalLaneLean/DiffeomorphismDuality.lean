import DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean.DiffeomorphismInvariance

/-!
# Diffeomorphism Duality Package
-/

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure DiffeomorphismDualityPackage {A : AdmissibleClass}
    {C : DiffeomorphismClassificationPackage A} {I : DiffeomorphismInvariancePackage C} where
  poincareDuality : Prop
  lefschetzDuality : Prop
  dualityCompatibility : Prop

structure DiffeomorphismDualityEvidence {A : AdmissibleClass}
    {C : DiffeomorphismClassificationPackage A} {I : DiffeomorphismInvariancePackage C}
    (D : DiffeomorphismDualityPackage) where
  poincareDualityClosed : D.poincareDuality
  lefschetzDualityClosed : D.lefschetzDuality
  dualityCompatibilityClosed : D.dualityCompatibility

def DiffeomorphismDualityClosed {A : AdmissibleClass}
    {C : DiffeomorphismClassificationPackage A} {I : DiffeomorphismInvariancePackage C}
    (D : DiffeomorphismDualityPackage) : Prop :=
  D.poincareDuality ∧ D.lefschetzDuality ∧ D.dualityCompatibility

theorem diffeomorphism_duality_closed_from_evidence
    {A : AdmissibleClass} {C : DiffeomorphismClassificationPackage A}
    {I : DiffeomorphismInvariancePackage C} (D : DiffeomorphismDualityPackage)
    (E : DiffeomorphismDualityEvidence D) : DiffeomorphismDualityClosed D := by
  exact And.intro E.poincareDualityClosed (And.intro E.lefschetzDualityClosed E.dualityCompatibilityClosed)

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse