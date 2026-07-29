import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure DiffeoAdmittedObject where
  sourceManifold : Type u
  targetManifold : Type u
  diffeomorphism : sourceManifold → targetManifold
  diffeomorphismSmooth : Prop
  diffeomorphismInverse : Prop
  conclusion : diffeomorphismSmooth ∧ diffeomorphismInverse

def DiffeoWitnessClosed (O : DiffeoAdmittedObject) : Prop :=
  O.diffeomorphismSmooth ∧ O.diffeomorphismInverse

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse