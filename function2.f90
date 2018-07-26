module function_2
  implicit none
  private

  public :: function2
  
contains
  double precision function function2( x )
    implicit none
    double precision x
    function2 = shift(x)**3
  end function function2

  double precision function shift(x)
    implicit none
    double precision x
    shift = x-1.0
  end function shift
  

end module function_2


