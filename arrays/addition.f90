program addition
    implicit none
    
    integer, parameter :: N = 100000
    integer, dimension(N) :: A, B, C
    integer :: i

    do i = 1, N
        A(i) = i
        B(i) = i
    enddo

    C = A + B

    print *, 'Result:'

    do i = 1, 10
        print *, C(i)
    enddo
end program addition