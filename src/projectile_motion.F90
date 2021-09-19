module projectile_motion_mod

   implicit none
   private

   public :: projectile_motion_without_drag


contains

   subroutine projectile_motion_without_drag(v0, angle, sx)

      real, intent(in)  :: v0
      real, intent(in)  :: angle
      real, intent(out) :: sx
      
      double precision t

      t = 2*v0*sin(angle)/9.81
      sx = v0*cos(angle)*t

   end subroutine projectile_motion_without_drag

end module projectile_motion_mod
