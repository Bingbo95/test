    !  test.f90
    !
    !  FUNCTIONS:
    !  test - Entry point of console application.
    !

    !****************************************************************************
    !
    !  PROGRAM: test
    !
    !  PURPOSE:  Entry point for the console application.
    !
    !****************************************************************************

    program test

    implicit none

    !    integer(kind=4), parameter :: n=20
    !    integer(kind=4) :: i
    !    real(kind=8), dimension(n) :: value
    !
    !    open(unit=1, file='testdata.txt')
    !    do i = 1,n,1
    !        read(1,*) value(i)
    !        write(*,10) value(i)
    !    end do
    !10  format(f10.4)

    real,dimension(100) :: x,y
    real,dimension(100) :: p,q
    integer :: i

    ! data generation

    do i = 1,100
        x(i) = i*0.1
        y(i) = sin(x(i))*(1-cos(x(i)/3.0))
    end do

    ! output data
    open(1, file='data1.dat', status='old',position='Append')
    do i = 1,100
        write(1,100) x(i),y(i)
        100 format(2f14.4)
    end do
    close(1)

    open(2, file = 'data1.dat',status = 'old')

    do i =1,100
        read(2,*) p(i),q(i)
    end do


    close(2)

    do i=1,100
        write(*,*) p(i), q(i)
    end do
    end program test