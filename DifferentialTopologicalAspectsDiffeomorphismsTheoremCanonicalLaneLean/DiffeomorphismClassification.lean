import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure DiffeomorphismClassificationPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  diffeomorphismEquiv : Prop
  classificationComplete : Prop

structure DiffeomorphismClassificationEvidence (D : DiffeomorphismClassificationPackage) where
  diffeomorphismEquivClosed : D.diffeomorphismEquiv
  classificationCompleteClosed : D.classificationComplete

def DiffeomorphismClassificationClosed (D : DiffeomorphismClassificationPackage) : Prop :=
  D.diffeomorphismEquiv ∧ D.classificationComplete

theorem diffeomorphism_classification_closed_from_evidence
    (D : DiffeomorphismClassificationPackage) (E : DiffeomorphismClassificationEvidence D) :
    DiffeomorphismClassificationClosed D := by
  exact And.intro E.diffeomorphismEquivClosed E.classificationCompleteClosed

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse
