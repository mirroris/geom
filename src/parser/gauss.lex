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
        fprintf(fp, "SLOG\n");
    }
\)  {
        fprintf(fp, "SLOG\n");
    }
,   {
        fprintf(fp, "SLOG\n");
    }
\+  {
        fprintf(fp, "SLOG\n");
    }
-   {
        fprintf(fp, "SLOG\n");
    }
\*  {
        fprintf(fp, "SLOG\n");
    }
\/   {
        fprintf(fp, "SLOG\n");
    };
\^  {
        fprintf(fp, "SLOG\n");
    };
[a-zA-Z]+   {
                fprintf(fp, "SLOG\n");
            }
[0-9]+  {
            fprintf(fp, "SLOG\n");
        }
[\n\t\s]+   {
                fprintf(fp, "SLOG\n");
            }

%%

int main(){

    if((fp = fopen("gauss_token.tok", "w")) != NULL){
        perror("file error");
        return 1;
    }

    yylex();
    fclose(fp);
    return 0;
}