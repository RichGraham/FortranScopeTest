module function_1
  implicit none

  private

  public :: function1
  
contains
  double precision function function1( x )
    implicit none
    double precision x
    function1 = shift(x)**2
  end function function1

  double precision function shift(x)
    implicit none
    double precision x
    shift = x+1.0
  end function shift
  

end module function_1


