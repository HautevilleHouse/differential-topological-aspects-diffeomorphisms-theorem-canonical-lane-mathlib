import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure PontryaginThomsenConstructionPackage where
  sourceManifold : Type u
  targetManifold : Type v
  embeddingType : Type w
  collapsedLocus : Prop
  cobordismRelation : Prop
  diffeomorphismInvariance : Prop

structure PontryaginThomsenConstructionEvidence (P : PontryaginThomsenConstructionPackage) where
  collapsedLocusClosed : P.collapsedLocus
  cobordismRelationClosed : P.cobordismRelation
  diffeomorphismInvarianceClosed : P.diffeomorphismInvariance

def PontryaginThomsenConstructionClosed (P : PontryaginThomsenConstructionPackage) : Prop :=
  P.collapsedLocus ∧ P.cobordismRelation ∧ P.diffeomorphismInvariance

theorem pontryagin_thomsen_construction_closed_from_evidence (P : PontryaginThomsenConstructionPackage)
    (E : PontryaginThomsenConstructionEvidence P) : PontryaginThomsenConstructionClosed P := by
  exact And.intro E.collapsedLocusClosed (And.intro E.cobordismRelationClosed E.diffeomorphismInvarianceClosed)

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse
