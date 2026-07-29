import HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean.MorseTheory

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure SardTheoremApplication (M N : DiffeomorphismSpace) where
  smoothMap : M.carrier → N.carrier
  criticalPoints : Set (M.carrier)
  regularValues : Set (N.carrier)
  sardConclusion : Prop

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse
