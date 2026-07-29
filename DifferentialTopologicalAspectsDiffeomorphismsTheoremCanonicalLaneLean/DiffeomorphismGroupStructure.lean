import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure DiffeomorphismGroupStructure where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  diffeomorphismGroup : Type v
  groupUnderComposition : Prop
  identityDiffeomorphism : diffeomorphismGroup
  compositionClosed : Prop
  inverseClosed : Prop

structure DiffeomorphismGroupEvidence (D : DiffeomorphismGroupStructure) where
  smoothStructureClosed : D.smoothStructure
  groupUnderCompositionClosed : D.groupUnderComposition
  compositionClosedClosed : D.compositionClosed
  inverseClosedClosed : D.inverseClosed

def DiffeomorphismGroupClosed (D : DiffeomorphismGroupStructure) : Prop :=
  D.smoothStructure ∧ D.groupUnderComposition ∧ D.compositionClosed ∧ D.inverseClosed

theorem diffeomorphism_group_closed_from_evidence (D : DiffeomorphismGroupStructure) (E : DiffeomorphismGroupEvidence D) :
    DiffeomorphismGroupClosed D := by
  exact And.intro E.smoothStructureClosed (And.intro E.groupUnderCompositionClosed (And.intro E.compositionClosedClosed E.inverseClosedClosed))

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse