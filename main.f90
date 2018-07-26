program testFunction
  use function_1
  use function_2
  implicit none
  
  ! Test program
  double precision:: x=2.0,e
  
  e = function1(x)
  print *,e

  e = function2(x)
  print *,e
  
end program testFunction


module genericFunction
