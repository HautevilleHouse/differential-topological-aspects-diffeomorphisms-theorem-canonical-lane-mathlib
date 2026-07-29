import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure MorseTheorySurgeryPackage where
  manifoldWithMorseFunction : Type u
  criticalPoints : Type v
  handleDecomposition : Prop
  surgeryDescription : Prop
  diffeomorphismRelation : Prop

structure MorseTheorySurgeryEvidence (M : MorseTheorySurgeryPackage) where
  handleDecompositionClosed : M.handleDecomposition
  surgeryDescriptionClosed : M.surgeryDescription
  diffeomorphismRelationClosed : M.diffeomorphismRelation

def MorseTheorySurgeryClosed (M : MorseTheorySurgeryPackage) : Prop :=
  M.handleDecomposition ∧ M.surgeryDescription ∧ M.diffeomorphismRelation

theorem morse_theory_surgery_closed_from_evidence (M : MorseTheorySurgeryPackage)
    (E : MorseTheorySurgeryEvidence M) : MorseTheorySurgeryClosed M := by
  exact And.intro E.handleDecompositionClosed (And.intro E.surgeryDescriptionClosed E.diffeomorphismRelationClosed)

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse
