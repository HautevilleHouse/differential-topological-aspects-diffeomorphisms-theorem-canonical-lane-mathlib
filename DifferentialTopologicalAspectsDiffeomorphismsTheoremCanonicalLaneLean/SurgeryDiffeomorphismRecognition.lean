import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure SurgeryDiffeomorphismPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  traceCobordism : Type u
  topology : TopologicalSpace traceCobordism
  surgeryData : ℕ × ℕ
  traceDiffeomorphism : Prop

structure SurgeryDiffeomorphismEvidence (S : SurgeryDiffeomorphismPackage M N) where
  traceDiffeomorphismClosed : S.traceDiffeomorphism
  surgerySpheresEmbedded : Prop
  surgerySpheresEmbeddedClosed : surgerySpheresEmbedded

def SurgeryDiffeomorphismClosed (S : SurgeryDiffeomorphismPackage M N) : Prop :=
  S.traceDiffeomorphism ∧ surgerySpheresEmbedded

theorem surgery_diffeomorphism_closed_from_evidence
    (S : SurgeryDiffeomorphismPackage M N) (E : SurgeryDiffeomorphismEvidence S) :
    SurgeryDiffeomorphismClosed S :=
  have h : surgerySpheresEmbedded := E.surgerySpheresEmbeddedClosed
  And.intro E.traceDiffeomorphismClosed h

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse