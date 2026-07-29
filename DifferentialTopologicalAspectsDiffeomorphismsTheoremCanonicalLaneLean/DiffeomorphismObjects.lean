import HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiffeomorphismSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  dimension : ℕ

structure DiffeomorphismAdmittedObject where
  source : DiffeomorphismSpace
  target : DiffeomorphismSpace
  diffeomorphismExists : Prop
  dimEqual : source.dimension = target.dimension
  smoothMap : Prop
  invertibleSmoothMap : Prop
  conclusion : diffeomorphismExists

structure DiffeomorphismEndgameState where
  object : DiffeomorphismAdmittedObject

def DiffeomorphismWitnessClosed (O : DiffeomorphismAdmittedObject) : Prop :=
  O.diffeomorphismExists

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse
