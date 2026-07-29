import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure MorseTheoryStratification where
  manifold : Type u
  morseFunction : Type v
  criticalPoints : Prop
  stratification : Prop
  handleDecomposition : Prop
  gradientFlowWellDefined : Prop

structure MorseTheoryEvidence (M : MorseTheoryStratification) where
  criticalPointsClosed : M.criticalPoints
  stratificationClosed : M.stratification
  handleDecompositionClosed : M.handleDecomposition
  gradientFlowWellDefinedClosed : M.gradientFlowWellDefined

def MorseTheoryClosed (M : MorseTheoryStratification) : Prop :=
  M.criticalPoints ∧ M.stratification ∧ M.handleDecomposition ∧ M.gradientFlowWellDefined

theorem morse_theory_closed_from_evidence (M : MorseTheoryStratification) (E : MorseTheoryEvidence M) :
    MorseTheoryClosed M := by
  exact And.intro E.criticalPointsClosed (And.intro E.stratificationClosed (And.intro E.handleDecompositionClosed E.gradientFlowWellDefinedClosed))

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse