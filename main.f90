program example

   use iso_c_binding, only: c_null_char
   
   interface c_print
      subroutine c_print(line) bind (c)
         use iso_c_binding, only: c_char
         implicit none
         character(c_char) :: line
      end subroutine
   end interface
   
   call c_print("ping"//c_null_char)

end program
