import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure CobordismClassificationPackage where
  sourceManifold : Type u
  targetManifold : Type v
  cobordism : Type w
  hCobordismTheorem : Prop
  diffeomorphismClassification : Prop
  whiteheadTorsionVanishes : Prop

structure CobordismClassificationEvidence (C : CobordismClassificationPackage) where
  hCobordismTheoremClosed : C.hCobordismTheorem
  diffeomorphismClassificationClosed : C.diffeomorphismClassification
  whiteheadTorsionVanishesClosed : C.whiteheadTorsionVanishes

def CobordismClassificationClosed (C : CobordismClassificationPackage) : Prop :=
  C.hCobordismTheorem ∧ C.diffeomorphismClassification ∧ C.whiteheadTorsionVanishes

theorem cobordism_classification_closed_from_evidence (C : CobordismClassificationPackage) (E : CobordismClassificationEvidence C) :
    CobordismClassificationClosed C := by
  exact And.intro E.hCobordismTheoremClosed (And.intro E.diffeomorphismClassificationClosed E.whiteheadTorsionVanishesClosed)

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse