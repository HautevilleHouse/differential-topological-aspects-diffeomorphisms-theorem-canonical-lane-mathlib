import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure IsotopyExtensionPackage where
  sourceManifold : Type u
  targetManifold : Type v
  ambientManifold : Type w
  isotopy : Type → Type
  extensionExists : Prop
  ambientIsotopyLifts : Prop
  continuityProperty : Prop

structure IsotopyExtensionEvidence (I : IsotopyExtensionPackage) where
  extensionExistsClosed : I.extensionExists
  ambientIsotopyLiftsClosed : I.ambientIsotopyLifts
  continuityPropertyClosed : I.continuityProperty

def IsotopyExtensionClosed (I : IsotopyExtensionPackage) : Prop :=
  I.extensionExists ∧ I.ambientIsotopyLifts ∧ I.continuityProperty

theorem isotopy_extension_closed_from_evidence (I : IsotopyExtensionPackage) (E : IsotopyExtensionEvidence I) :
    IsotopyExtensionClosed I := by
  exact And.intro E.extensionExistsClosed (And.intro E.ambientIsotopyLiftsClosed E.continuityPropertyClosed)

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse