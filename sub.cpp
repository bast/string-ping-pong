#include <stdio.h>
#include <string.h>

extern "C"
{
    extern void fortran_print(const char *line);

    void c_print(const char *line)
    {
        printf("\nC code received the following string: %s\n", line);
        printf("the string has the length: %i\n\n", strlen(line));

        fortran_print("pong");
    }
}
