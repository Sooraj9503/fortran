program allocatable
    implicit none

    integer, allocatable :: array1(:,:)
    integer, allocatable :: array2(:,:)  
    integer, allocatable :: array3(:,:)
    real (kind=8) :: start_time, end_time

    integer :: i, N, j
    N = 50000
    
    allocate(array3(N,N))
    allocate(array1(N,N))
    allocate(array2(N,N))

    array3(N,N) = 0

    do i = 1, N
        do j = 1, N
            array1(i,j) = j
        end do        
    end do

    do i = 1, N
        do j = 1, N
            array2(i, j) = j
        end do
    end do

    call cpu_time(start_time)
    array3 = array1 * array2
    call cpu_time(end_time)

    print *, 'Time taken:', end_time - start_time, 'Seconds'

    deallocate(array1)
    deallocate(array2) 

end program allocatable