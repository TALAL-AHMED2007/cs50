#include <cs50.h>
#include <stdio.h>

int main (void)

{
    string name = get_string("what is your name: ");

    printf("Hello, %s nice to meet you!", name);
}