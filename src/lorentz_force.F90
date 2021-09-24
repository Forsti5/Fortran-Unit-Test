module lorentz_force_mod
   
   use vector_products_mod
   implicit none
   private

   public :: lorentz_force


contains

   subroutine lorentz_force(q,E,v,B,F)
      
      real, intent(in) :: q
      real, dimension(3), intent(in)  :: E,v,B
      real, dimension(3), intent(out) :: F
      
      real, dimension(3) :: vB
      
      call crossproduct(v,B,vB)
      F = q*(E+vB)

   end subroutine lorentz_force

end module lorentz_force_mod
