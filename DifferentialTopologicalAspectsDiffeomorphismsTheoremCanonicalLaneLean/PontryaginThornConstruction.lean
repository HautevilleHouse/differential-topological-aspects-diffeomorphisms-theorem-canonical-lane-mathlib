import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure PontryaginThornPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  constructionMap : M → N
  framedMap : Prop
  degreeCalculation : ℤ
  transversality : Prop

structure PontryaginThornEvidence (P : PontryaginThornPackage M N) where
  framedMapClosed : P.framedMap
  transversalityClosed : P.transversality
  degreeConfirmed : P.degreeCalculation = 0 ∨ P.degreeCalculation = 1

def PontryaginThornClosed (P : PontryaginThornPackage M N) : Prop :=
  P.framedMap ∧ P.transversality ∧ (P.degreeCalculation = 0 ∨ P.degreeCalculation = 1)

theorem pontryagin_thorn_closed_from_evidence
    (P : PontryaginThornPackage M N) (E : PontryaginThornEvidence P) :
    PontryaginThornClosed P :=
  And.intro E.framedMapClosed (And.intro E.transversalityClosed E.degreeConfirmed)

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse