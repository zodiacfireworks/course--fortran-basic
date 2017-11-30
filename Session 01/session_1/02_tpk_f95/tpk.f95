module Functions
    public :: fun
    contains
    function fun(t) result (r)
        real, intent(in) :: t
        real  :: r
        r = sqrt(abs(t)) + 5.0*t**3
    end function fun
end module Functions

program TPK
    ! The TPK Algorithm
    ! F style
    use Functions
    integer :: i
    real    :: y
    real, dimension(0:10) :: a
    read *, a
    do i = 10, 0, -1      ! Backwards
       y = fun(a(i))
       if ( y < 400.0 ) then
          print *, i, y
       else
          print *, i, " To    o large"
       end if
    end do
end program
