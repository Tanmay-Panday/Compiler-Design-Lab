%{
    int n=0, t=0, c=0, s=0; // initialize counters
%}

%%
\n  {n++;}
\t  {t++;}
" "  {s++;}
.  {c++;}
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    printf("%d new lines, %d tabs, %d characters, %d spaces",n,t,s,c);
    return 0;
}