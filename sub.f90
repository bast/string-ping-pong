subroutine fortran_print(string) bind (c)

   use iso_c_binding, only: c_char, c_null_char
   implicit none

   character (kind=c_char, len=1), intent(in) :: string(*)
   integer :: i, string_len

   i = 1
   do while (.true.)
      if (string(i) == c_null_char) then
         string_len = i - 1
         exit
      end if
      i = i + 1
   end do

   print *, 'Fortran code received the following string: ', string(1:string_len)
   print *, 'the string has the length: ', string_len

end subroutine
