PALAVRA_RESERVADA "void" | "main"
TIPO "int" | "bool"
COMANDO "skip" | ":=" | "if" | "while" | "do" | "return"
BOOLEXP "true" | "false" | "not" | "leq" | and | "or"
OPA "+" | "-"
OPM "*" | "/"
ABRE_PARENTESES "("
FECHA_PARENTESES ")"
ABRE_CHAVES "{"
FECHA_CHAVES "}"
PONTO_VIRGULA ";"
VIRGULA ","

FACAO_OPCIONAL	("."{DIGITO})?
EXPOENTE_OPCIONAL	("E"("+"|"-")?{DIGITO})?

TOKEN_ID	{LETRA}({LETRA}|{DIGITOS})*"_"*
TOKEN_NUM_LITERAL	{DIGITOS}{FACAO_OPCIONAL}{EXPOENTE_OPCIONAL}

DIGITO	[0-9]
LETRA	[a-zA-Z]
ID	{LETRA}({LETRA}|{DIGITO})*
%%
{DIGITO}+		{printf("Inteiro: %s\n",yytext);}
{DIGITO}+"."{DIGITO}+	{printf("Real: %s\n",yytext);}
{ID}			{printf("var: %s\n",yytext);}

%%
int yywrap();

main(){
  yylex();
}

int yywrap(){
 return 1;
}
