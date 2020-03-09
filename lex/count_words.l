%{
#include<stdio.h>
#include<stdlib.h>
int count=0;
%}

%%
exit        {printf ("Exiting.... \n");return 0;}
[^ \t\n]+      {count++;}
.           {}
\n          {printf("%d \n",count); count=0;}
%%

int yywrap(){}

 int main(){
    yylex();
}