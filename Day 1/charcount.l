%{
    int c=0;
%}

%%
[a-z] {c++;}
[A-Z] {c++;}
%%

int yywrap(){
    return 1;
}

int main(void)
{
    yylex();
    printf("%d is number of characters",c);
    return 0;
}