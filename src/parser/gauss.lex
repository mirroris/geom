%{
    #include<stdio.h>

    int yywrap(void){
        return 1;
    }
    
    FILE *fp;
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
        fprintf(fp, "SLOG\n");
    }
\(  {
        fprintf(fp, "SLPAREN\n");
    }
\)  {
        fprintf(fp, "SRPAREN\n");
    }
,   {
        fprintf(fp, "SCOMMA\n");
    }
\+  {
        fprintf(fp, "SADD\n");
    }
-   {
        fprintf(fp, "SSUB\n");
    }
\*  {
        fprintf(fp, "SMULT\n");
    }
\/   {
        fprintf(fp, "SDIV\n");
    };
\^  {
        fprintf(fp, "SPOW\n");
    };
[a-zA-Z]+   {
                fprintf(fp, "SVAL\n");
            }
[0-9]+  {
            fprintf(fp, "SNUM\n");
        }


%%

int main(){

    if((fp = fopen("gauss_token.tok", "w")) == NULL){
        perror("file error");
        return 1;
    }

    yylex();
    fclose(fp);
    return 0;
}