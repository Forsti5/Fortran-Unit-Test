program main

	use ProjectileMotion
	
	implicit none
	real(8)::v0, angle, sx
	
	write(*, fmt="(1x,a,i0)", advance="no") "Initial velocity: "
	read *, v0
	write(*, fmt="(1x,a,i0)", advance="no") "Initial angle: "
	read *, angle
	
	! only for tests 
	! v0 = 5e0
	! angle = 0.7e0
	
	call ProjectileMotionWithoutDrag(v0, angle, sx)
!	sx = ProjectileMotionWithoutDrag(v0, angle)
	write(*,*)sx

end program main
