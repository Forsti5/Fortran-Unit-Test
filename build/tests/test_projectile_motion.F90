!module test_projectile_motion_mod
!   use projectile_motion_mod
!   use funit
!   implicit none

!contains

!   @test
!   subroutine test_projectile_motion()

!      real :: v0 = 5.
!      real :: angle = 1.
!      real :: res

!      call projectile_motion_without_drag(v0, angle, res)
!      @assertEqual(2.3172716308130652, res, 'projectile_motion_without_drag(5,1)')

!   end subroutine test_projectile_motion

!end module test_projectile_motion_mod

!@test
subroutine test_projectile_motion()
	use projectile_motion_mod
	use funit
	implicit none
	
	real :: v0 = 5.
	real :: angle = 1.
	real :: res
	   
	call projectile_motion_without_drag(v0, angle, res)
#line 33 "/home/daniel/Bachelorarbeit/Fortran-Unit-Test/tests/test_projectile_motion.f90"
  call assertEqual(2.3172716308130652, res, tolerance = 0.1, message = 'projectile_motion_without_drag(5,1)', &
 & location=SourceLocation( &
 & 'test_projectile_motion.f90', &
 & 33) )
  if (anyExceptions()) return
#line 34 "/home/daniel/Bachelorarbeit/Fortran-Unit-Test/tests/test_projectile_motion.f90"
	   
end subroutine test_projectile_motion

module Wraptest_projectile_motion
   use FUnit
   implicit none
   private

contains


end module Wraptest_projectile_motion

function test_projectile_motion_suite() result(suite)
   use FUnit
   use Wraptest_projectile_motion
   implicit none
   type (TestSuite) :: suite

   class (Test), allocatable :: t

   external test_projectile_motion


   suite = TestSuite('test_projectile_motion_suite')

   if(allocated(t)) deallocate(t)
   allocate(t, source=TestMethod('test_projectile_motion', &
      test_projectile_motion))
   call suite%addTest(t)


end function test_projectile_motion_suite

