%option noyywrap
%{
    #include <stdio.h>
    #include <string.h>
%}

%%
[a-zA-Z]+[ ][a-zA-Z]+    {printf("valid\n");} // Valid name pattern
[^a-zA-Z\n ]+   {printf("invalid\n");} // Any other input 
\n  ;   
.   ;                  

%%

int main(void)
{
    yylex();
    return 0;
}
