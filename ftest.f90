program ftest 

implicit none
integer, parameter :: SIZE = 100
real, dimension(1:SIZE, 1:SIZE) :: a, b
real, dimension(1:SIZE) :: x, y    ![Only one size param in original C program]
:integer :: i, j
integer ISEED
real S(SIZE)

![MATMUL(Matrix A, Matrix B) - multiplication of matrices]

CALL RANDOM_SEED(SIZE=ISEED)    ![Chooses random seed each time it's run?]
do i=1, SIZE
     !get an error at 'x(i)' and 'y(i)'. Will work on this.
     x(i) = CALL RANDOM_NUMBER(HARVEST=S)/ ![RAND_MAX?]
     y(i) = CALL RANDOM_NUMBER(HARVEST=S)/ ![RAND_MAX]
end do

Write(*,*) S   ![check to see if I'm getting anything to output (nope)]

do i=1, SIZE
     do j=1, SIZE
        a(i,j) = (3*a(i,j))*(x(j)*y(i))
     end do
end do

do i=1, SIZE
     y(i) = x(i)*y(i)
end do

do i=1, SIZE
     do j=1, SIZE
        y(i) = a(i,j)*(x,j)   ![expected PARAMETER symbol in complex constant]
     end do
end do

do i=1, SIZE
     do j=1, SIZE
        b(i,j) = a(j,i)
     end do
end do

end program ftest
