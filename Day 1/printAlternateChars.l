%{
    #include <stdio.h>
    int c = 0;
%}

%%
[a-z] { 
    if (c % 2 == 0) {
        printf("%s ", yytext);
    }
    c++;  // Increment the counter after checking the condition
}
%%

int yywrap() {
    return 1;
}

int main(void) {
    yylex();
    return 0;
}