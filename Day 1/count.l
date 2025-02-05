%{
    int n=0, t=0, c=0, s=0; // initialize counters
%}

%%
\n  {n++;}  // newline count
\t  {t++;}  // tabspace count
" "  {s++;} // space count
.  {c++;}   // anything else ( character )
%%

int yywrap(){
    return 1;
}

int main(){
    yylex();
    printf("%d new lines, %d tabs, %d characters, %d spaces",n,t,s,c);
    return 0;
}