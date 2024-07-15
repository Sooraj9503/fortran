program a
    implicit none
    integer, [kind = 8] :: N, i, j
    real, [kind = 8] :: dx, area, pi, dx, y, x 
    N = 999999999

    dx = 1.0 / N
    x = 0.0
    area = 0.0
    i = 0

    do i, N, 1    
        x = i * dx
        y = sqr[1.0 - x*x]
        area += y * dx
    do end    
    area *= 4
end program a