module test_lorentz_force_mod
   use lorentz_force_mod
   use funit
   implicit none

contains

   @suite(name='test_lorentz_force_suite')
   
   @test
   subroutine test_lorentz_force()

      real, dimension(3)  :: E,B,v,F
      real :: q
      logical, dimension(3) :: resL
      
      q = -1
      E = [0.,2.,0.]
      v = [1.,1.,0.]
      B = [0.,0.,1.]

      call lorentz_force(q,E,v,B,F)
      
      resL = abs(F-[-1.,-1.,0.]) <= 1e-13
      @assertAll(resL, message = "test lorentz force")

   end subroutine test_lorentz_force

end module test_lorentz_force_mod
