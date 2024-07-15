program pointerExample
   implicit none

   integer, pointer :: p1
   integer, target :: t
   
   p1=>t
   p1 = 1
   Print *, p1
   
   p1 = p1 + 4
   Print *, p1

   nullify(p1)   
   
end program pointerExample