module a_module
  use b_module
  implicit none

  private
  
  
  public :: printB, a_const

  double precision:: a_const=1.234567890123456789d0
contains

  subroutine printB()
    print *,b_const
  end subroutine printB


end module a_module


