%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
exit {printf ("Exiting.... \n");return 0;}
^[A-Za-z][a-zA-z0-9]+@[a-z]+[.](com|in) {printf("%s is valid.. ", yytext);}
.+        {printf("%s is invalid.. ", yytext);}
%%

int yywrap(){}

 int main(){
    yylex();
}