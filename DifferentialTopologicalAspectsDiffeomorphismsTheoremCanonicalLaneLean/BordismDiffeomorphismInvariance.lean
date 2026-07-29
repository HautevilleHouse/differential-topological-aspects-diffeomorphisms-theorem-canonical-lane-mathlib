import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure BordismDiffeomorphismPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  cobordism : Type u
  topology : TopologicalSpace cobordism
  boundaryM : M → cobordism
  boundaryN : N → cobordism
  diffeomorphismInvariant : Prop
  bordismClass : Set (Type u)

structure BordismDiffeomorphismEvidence (B : BordismDiffeomorphismPackage M N) where
  diffeomorphismInvariantClosed : B.diffeomorphismInvariant
  bordismClassNonempty : Nonempty (B.bordismClass)

def BordismDiffeomorphismClosed (B : BordismDiffeomorphismPackage M N) : Prop :=
  B.diffeomorphismInvariant ∧ Nonempty (B.bordismClass)

theorem bordism_diffeomorphism_closed_from_evidence
    (B : BordismDiffeomorphismPackage M N) (E : BordismDiffeomorphismEvidence B) :
    BordismDiffeomorphismClosed B :=
  And.intro E.diffeomorphismInvariantClosed E.bordismClassNonempty

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse