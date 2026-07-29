import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure hCobordismPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  cobordism : Type u
  topology : TopologicalSpace cobordism
  boundaryM : M → cobordism
  boundaryN : N → cobordism
  homotopyEquivalent : Prop
  simplyConnected : Prop

structure hCobordismEvidence (W : hCobordismPackage M N) where
  homotopyEquivalentClosed : W.homotopyEquivalent
  simplyConnectedClosed : W.simplyConnected

def hCobordismClosed (W : hCobordismPackage M N) : Prop :=
  W.homotopyEquivalent ∧ W.simplyConnected

theorem hCobordism_closed_from_evidence (W : hCobordismPackage M N)
    (E : hCobordismEvidence W) : hCobordismClosed W :=
  And.intro E.homotopyEquivalentClosed E.simplyConnectedClosed

structure sCobordismPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] where
  cobordism : Type u
  topology : TopologicalSpace cobordism
  simpleHomotopyEquivalence : Prop

structure SmaleCobordismEvidence (M N : Type u) [TopologicalSpace M] [TopologicalSpace N]
    (W : hCobordismPackage M N) (S : sCobordismPackage M N) where
  hCobordismClosed : hCobordismClosed W
  simpleHomotopyEquivalenceClosed : S.simpleHomotopyEquivalence

def SmaleCobordismClosed (M N : Type u) [TopologicalSpace M] [TopologicalSpace N]
    (W : hCobordismPackage M N) (S : sCobordismPackage M N) : Prop :=
  hCobordismClosed W ∧ S.simpleHomotopyEquivalence

theorem smale_cobordism_closed_from_evidence
    (M N : Type u) [TopologicalSpace M] [TopologicalSpace N]
    (W : hCobordismPackage M N) (S : sCobordismPackage M N)
    (E : SmaleCobordismEvidence W S) : SmaleCobordismClosed W S :=
  And.intro E.hCobordismClosed E.simpleHomotopyEquivalenceClosed

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse