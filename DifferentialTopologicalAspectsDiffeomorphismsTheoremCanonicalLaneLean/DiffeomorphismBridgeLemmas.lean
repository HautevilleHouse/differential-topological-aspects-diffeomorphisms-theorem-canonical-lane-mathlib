import DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean.DiffeomorphismAdmissibleClass

namespace HautevilleHouse
namespace DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean

def DiffeomorphismWitnessClosed (O : DiffeomorphismAdmittedObject) : Prop :=
  O.diffeomorphismExists

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiffeomorphismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialTopologicalAspectsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse