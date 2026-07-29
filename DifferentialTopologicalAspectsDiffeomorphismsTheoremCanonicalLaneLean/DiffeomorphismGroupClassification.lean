import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure DiffeomorphismClassificationPackage where
  manifoldType : Type u
  topology : TopologicalSpace manifoldType
  smoothStructure : Prop
  diffeomorphismGroup : Type v
  groupStructure : Prop
  identityComponent : Prop
  mappingClassGroup : Prop

structure DiffeomorphismClassificationEvidence (D : DiffeomorphismClassificationPackage) where
  smoothStructureClosed : D.smoothStructure
  groupStructureClosed : D.groupStructure
  identityComponentClosed : D.identityComponent
  mappingClassGroupClosed : D.mappingClassGroup

def DiffeomorphismClassificationClosed (D : DiffeomorphismClassificationPackage) : Prop :=
  D.smoothStructure ∧ D.groupStructure ∧ D.identityComponent ∧ D.mappingClassGroup

theorem diffeomorphism_classification_closed_from_evidence (D : DiffeomorphismClassificationPackage)
    (E : DiffeomorphismClassificationEvidence D) : DiffeomorphismClassificationClosed D := by
  exact And.intro E.smoothStructureClosed (And.intro E.groupStructureClosed (And.intro E.identityComponentClosed E.mappingClassGroupClosed))

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse
