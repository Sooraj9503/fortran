program num
    implicit none
    integer :: i
    character :: choice
    choice = 'y'
    do while(choice == 'y')
        select case(choice)
            case 1
            call check()
        print *, "If you want to continue play press [y], If you want to EXIT press except [y]" 
        read *, choice
        end if
    end do
end program num

subroutine check()
    implicit none
    integer :: i
    print *, "Enter a integer number"
        read *, i
        if(mod(i,2) == 0) then
            print *, "even number"
        else
            print *, "odd number"
end subroutine check