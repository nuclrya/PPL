%{
#include<stdio.h>
#include<stdlib.h>
int ctr=0;
%}

%%
exit        {printf ("Exiting.... \n");return 0;}
[a-zA-Z]+   {if(strlen(yytext)>5) ctr++;}
\n          {printf("%d ", ctr);ctr=0;}  
.           {}
%%

int yywrap(){}

 int main(){
    yylex();
}