program temp
    implicit none
    real :: r, h, area, volume, a, v, area1

    r = 10
    h = 34

    call ar_sub(r, h, area)
    print *, "Area calculated by subroutine: ", area

    call volume_subroutine(r, h, volume)
    print *, "Volume calculated by subroutine: ", volume

    a = area1(r, h)
    print *, "Area calculated by function: ", a

end program temp

subroutine ar_sub(r, h, area)
    implicit none
    real, intent(in) :: r, h
    real, intent(out) :: area
    area = 3.14 * r * (r + h)
end subroutine ar_sub

subroutine volume_subroutine(r, h, volume)
    implicit none
    real, intent(in) :: r, h
    real, intent(out) :: volume
    volume = 3.14 * r * r * h
end subroutine volume_subroutine

function area1(r, h)
    implicit none
    real, intent(in) :: r, h
    real :: area1
    area1 = 3.14 * r * (r + h)
end function area1

function volume(r, h)
    implicit none
    real, intent(in) :: r, h
    real :: volume
    volume = 3.14 * r * r * h
end function volume