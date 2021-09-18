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

@test
subroutine test_projectile_motion()
	use projectile_motion_mod
	use funit
	implicit none
	
	real :: v0 = 5.
	real :: angle = 1.
	real :: res
	   
	call projectile_motion_without_drag(v0, angle, res)
	@assertEqual(2.3172716308130652, res, tolerance = 0.1, message = 'projectile_motion_without_drag(5,1)')
	   
end subroutine test_projectile_motion
