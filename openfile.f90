    subroutine openfiles
    open(2, file = 'data1.dat',status = 'old')

    do i =1,100
        read(2,*) p(i),q(i)
    end do


    close(2)

    do i=1,100
        write(*,*) p(i), q(i)
    end do
    end subroutine openfiles