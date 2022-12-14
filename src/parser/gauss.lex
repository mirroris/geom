%{
    #include<stdio.h>
%}

%%

sin {
        fprintf(fp, "SSIN\n");
    }
cos {
        fprintf(fp, "SCOS\n");
    }
e   {
        fprintf(fp, "SNAIPIER\n");
    }
log {
        fprintf(fp, "SLOG\n%");
    }
\(     {return SLPAREN;}
\)     return SRPAREN;
,     return SCOMMA;
\+     return SADD;
-     return  SSUB;
\*     return  SMULT;
\/     return  SDIV;
\^     return  SPOW;
[a-zA-Z]+   return SVAL;
[0-9]+  return SNUM;
[\n\t\s]+  return SNULL;

%%

int main(){
    FILE *fp;
    if((fp = fopen("gauss_token.tok", 'w')) != NULL){
        perror("file error");
        return 1;
    }

    yylex();
    fclose(fp);
    return 0;
}