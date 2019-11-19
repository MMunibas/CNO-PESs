program testpes
use callpot1 
!use callpot2
!use callpot3 
implicit none
real*8, parameter :: pi=acos(-1.0d0)
real*8 :: rcn, rco, rno, v
real*8, dimension(:) :: dvdr(3), r(3)

!      3
!      O
!     / \
!  r3/   \r2
!   /     \
!  /       \
! C---------N
! 1   r1    2

rcn=2.4d0 !in bohr
rno=4.5d0 !in bohr
rco=2.3d0 !in bohr

r(1)=rcn
r(2)=rno
r(3)=rco

call ocn2appes(r, v, dvdr)
!call ocn2apppes(r, v, dvdr)
!call ocn4apppes(r, v, dvdr)

write(*,*)"Energy = ", v, "Hartree"
write(*,*)"dV/dr_i (Hartree/bohr) = ", dvdr

end
