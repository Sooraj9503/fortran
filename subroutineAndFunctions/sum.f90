program add
    implicit none
    integer :: a, b, c, sum, sum1, addi
    a = 10
    b = 15
    c = 20

    sum = addi(a, b, c)
    call summ(a, b, c, sum1)
    print *, "Addition from function: ", sum
    print *, "Addition from subroutine: ", sum1
end program add

function addi(a, b, c)
    implicit none
    integer, intent(in) :: a, b, c
    integer :: addi
    addi = a + b + c
end function addi

subroutine summ(a, b, c, sum1)
    implicit none
    integer :: a, b, c, sum1
    sum1 = a + b + c
end subroutine summ