import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure MorseFunctionPackage (M : Type u) [TopologicalSpace M] where
  function : M → ℝ
  criticalPoints : Set M
  nondegenerate : Prop
  morseIndex : ℕ → ℕ

structure HandleDecompositionPackage (M : Type u) [TopologicalSpace M] where
  handleAttachments : List (ℕ × ℕ)
  decompositionValid : Prop

structure MorseTheoryEvidence {M : Type u} [TopologicalSpace M]
    (Morse : MorseFunctionPackage M) (Handles : HandleDecompositionPackage M) where
  nondegenerateClosed : Morse.nondegenerate
  decompositionValidClosed : Handles.decompositionValid

def MorseTheoryClosed {M : Type u} [TopologicalSpace M]
    (Morse : MorseFunctionPackage M) (Handles : HandleDecompositionPackage M) : Prop :=
  Morse.nondegenerate ∧ Handles.decompositionValid

theorem morse_theory_closed_from_evidence
    {M : Type u} [TopologicalSpace M]
    (Morse : MorseFunctionPackage M) (Handles : HandleDecompositionPackage M)
    (E : MorseTheoryEvidence Morse Handles) : MorseTheoryClosed Morse Handles :=
  And.intro E.nondegenerateClosed E.decompositionValidClosed

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse