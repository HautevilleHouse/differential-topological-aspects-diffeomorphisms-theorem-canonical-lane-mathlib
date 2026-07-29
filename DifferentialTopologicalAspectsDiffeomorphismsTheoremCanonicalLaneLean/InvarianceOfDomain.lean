import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure InvarianceOfDomainPackage where
  sourceDimension : ℕ
  targetDimension : ℕ
  continuousInjection : Type u
  domainOpen : Prop
  imageOpen : Prop
  mapIsHomeomorphismOntoImage : Prop

structure InvarianceOfDomainEvidence (I : InvarianceOfDomainPackage) where
  domainOpenClosed : I.domainOpen
  imageOpenClosed : I.imageOpen
  mapIsHomeomorphismOntoImageClosed : I.mapIsHomeomorphismOntoImage

def InvarianceOfDomainClosed (I : InvarianceOfDomainPackage) : Prop :=
  I.domainOpen ∧ I.imageOpen ∧ I.mapIsHomeomorphismOntoImage

theorem invariance_of_domain_closed_from_evidence (I : InvarianceOfDomainPackage)
    (E : InvarianceOfDomainEvidence I) : InvarianceOfDomainClosed I := by
  exact And.intro E.domainOpenClosed (And.intro E.imageOpenClosed E.mapIsHomeomorphismOntoImageClosed)

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse
