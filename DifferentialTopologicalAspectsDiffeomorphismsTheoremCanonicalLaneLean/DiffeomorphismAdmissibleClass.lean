import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure DiffeomorphismAdmittedObject where
  source : Type u
  target : Type v
  topologySource : TopologicalSpace source
  topologyTarget : TopologicalSpace target
  smoothStructureSource : Type w
  smoothStructureTarget : Type z
  diffeomorphismExists : Prop
  conclusion : diffeomorphismExists

structure AdmissibleClass where
  object : DiffeomorphismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiffeomorphismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse