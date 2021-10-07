module test_vector_products_mod
   use vector_products_mod
   use funit
   implicit none

contains

   @suite(name='test_vector_products_suite')

   @test
   subroutine test_crossproduct()

      real, dimension(3)  :: a,b,res
      logical, dimension(3) :: resL
      
      a = [1.,-1.,2.]
      b = [3.,1.,2.]

      call crossproduct(a, b, res)
      
      resL = abs(res-[-4.,4.,4.]) <= 1e-13
      @assertAll(resL, message = "logical test cross product")

   end subroutine test_crossproduct
   
   @test
   subroutine test_dotproduct()

      real, dimension(3)  :: a,b
      real :: res
      
      a = [2.,-4.,1.]
      b = [3.,1.,2.]

      call dotproduct(a, b, res)
      @assertEqual(4, res, tolerance = 1e-13, message = "test dot product")

   end subroutine test_dotproduct

end module test_vector_products_mod
