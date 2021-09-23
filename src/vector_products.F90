module vector_products_mod

   implicit none
   private

   public :: crossproduct
   public :: dotproduct


contains

   subroutine crossproduct(a,b,res)

      real, dimension(3), intent(in)  :: a,b
      real, dimension(3), intent(out) :: res
      
      res(1) = a(2)*b(3)-a(3)*b(2)
      res(2) = a(3)*b(1)-a(1)*b(3)
      res(3) = a(1)*b(2)-a(2)*b(1)

   end subroutine crossproduct
   
   subroutine dotproduct(a,b,res)

      real, dimension(3), intent(in)  :: a,b
      real, intent(out) :: res
      
      res = a(1)*b(1)+a(2)*b(2)+a(3)*b(3)

   end subroutine dotproduct

end module vector_products_mod
