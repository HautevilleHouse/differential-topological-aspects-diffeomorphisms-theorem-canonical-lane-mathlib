import HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

def ConstrainedDiffeomorphismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diffeomorphism_endgame (A : AdmissibleClass) :
    ConstrainedDiffeomorphismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse
