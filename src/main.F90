program main

    use projectile_motion_mod
	
    implicit none
    real::v0, angle, sx

    write(*, fmt="(1x,a,i0)", advance="no") "Initial velocity: "
    read *, v0
    write(*, fmt="(1x,a,i0)", advance="no") "Initial angle: "
    read *, angle

    call projectile_motion_without_drag(v0, angle, sx)
    write(*,*)sx

end program main
