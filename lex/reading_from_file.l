%{
#include<stdio.h>
#include<stdlib.h>
int count=0;
%}

%%
exit        {printf ("Exiting.... \n");return 0;}
[a-z]+      {count++;}
.           {}
\n          {printf("%d \n",count); count=0;}
%%

int yywrap(){}

int main(){
    FILE *fp; 
    char filename[50]; 
    printf("Enter the filename: \n"); 
    scanf("%s",filename); 
    fp = fopen(filename,"r"); 
    yyin = fp; 
    yylex();
}