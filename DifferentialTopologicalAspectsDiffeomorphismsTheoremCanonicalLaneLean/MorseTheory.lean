import HautevilleHouse.DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean.DiffeomorphismObjects

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

structure MorseFunctionData (M : DiffeomorphismSpace) where
  morseFunction : M.carrier → ℝ
  nondegenerateCriticalPoints : Prop
  gradientLikeVectorField : Prop
  handleDecomposition : Prop

structure MorseTheoryPackage (M : DiffeomorphismSpace) where
  morseFunctionData : MorseFunctionData M
  morseHomology : Prop
  morseInequalities : Prop

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse
