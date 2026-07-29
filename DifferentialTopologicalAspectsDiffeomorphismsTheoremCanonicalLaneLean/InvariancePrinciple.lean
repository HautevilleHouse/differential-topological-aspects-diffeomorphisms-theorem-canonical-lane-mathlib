import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure InvariancePrinciplePackage where
  domain : Type u
  codomain : Type v
  domainTopology : TopologicalSpace domain
  codomainTopology : TopologicalSpace codomain
  invarianceUnderDiffeomorphism : Prop
  principleEstablished : Prop

structure InvariancePrincipleEvidence (I : InvariancePrinciplePackage) where
  invarianceUnderDiffeomorphismClosed : I.invarianceUnderDiffeomorphism
  principleEstablishedClosed : I.principleEstablished

def InvariancePrincipleClosed (I : InvariancePrinciplePackage) : Prop :=
  I.invarianceUnderDiffeomorphism ∧ I.principleEstablished

theorem invariance_principle_closed_from_evidence
    (I : InvariancePrinciplePackage) (E : InvariancePrincipleEvidence I) :
    InvariancePrincipleClosed I := by
  exact And.intro E.invarianceUnderDiffeomorphismClosed E.principleEstablishedClosed

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse
