program arrays
    implicit none
    !1D integer array
    integer, dimension(10) :: arr1

    !2D real array
    real, dimension(10) :: arr2

    !Customize lower and upper indix bounds
    real :: array3(0: 9)
    real :: array4(-5: 5)

    print *, arr1(2: 4)
    print *, arr2(3)
    print *, array3(7)
    print *, array4(-2)
end program arrays




subroutine calc(a, b, c, sum)
    implicit none
    sum = a + B + c
end subroutine calc