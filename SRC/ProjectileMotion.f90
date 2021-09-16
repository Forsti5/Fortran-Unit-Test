module ProjectileMotion

   implicit none

   public ProjectileMotionWithoutDrag

   private

contains

   subroutine ProjectileMotionWithoutDrag(v0, angle, sx)

      real(8), intent(in)  :: v0
      real(8), intent(in)  :: angle
      real(8), intent(out) :: sx
      
      double precision t

      t = 2*v0*sin(angle)/9.81
      sx = v0*cos(angle)*t

   end subroutine


!   elemental real function ProjectileMotionWithoutDrag(v0, angle)

!      real, intent(in)  :: v0
!      real, intent(in)  :: angle
!      
!      double precision t

!      t = 2*v0*sin(angle)/9.81
!      ProjectileMotionWithoutDrag = v0*cos(angle)*t

!   end function ProjectileMotionWithoutDrag

end module
