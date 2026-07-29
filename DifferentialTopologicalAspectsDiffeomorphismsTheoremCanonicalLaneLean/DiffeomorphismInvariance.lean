import DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean.DiffeomorphismClassification
import Mathlib.Topology.Manifold.Invariance

/-!
# Diffeomorphism Invariance Package
-/

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure DiffeomorphismInvariancePackage {A : AdmissibleClass}
    (C : DiffeomorphismClassificationPackage A) where
  invarianceUnderDiffeomorphism : Prop
  differentiableInvariance : Prop
  topologicalInvariance : Prop

structure DiffeomorphismInvarianceEvidence {A : AdmissibleClass}
    {C : DiffeomorphismClassificationPackage A} (I : DiffeomorphismInvariancePackage C) where
  invarianceUnderDiffeomorphismClosed : I.invarianceUnderDiffeomorphism
  differentiableInvarianceClosed : I.differentiableInvariance
  topologicalInvarianceClosed : I.topologicalInvariance

def DiffeomorphismInvarianceClosed {A : AdmissibleClass}
    {C : DiffeomorphismClassificationPackage A} (I : DiffeomorphismInvariancePackage C) : Prop :=
  I.invarianceUnderDiffeomorphism ∧ I.differentiableInvariance ∧ I.topologicalInvariance

theorem diffeomorphism_invariance_closed_from_evidence
    {A : AdmissibleClass} {C : DiffeomorphismClassificationPackage A}
    (I : DiffeomorphismInvariancePackage C) (E : DiffeomorphismInvarianceEvidence I) :
    DiffeomorphismInvarianceClosed I := by
  exact And.intro E.invarianceUnderDiffeomorphismClosed
    (And.intro E.differentiableInvarianceClosed E.topologicalInvarianceClosed)

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse