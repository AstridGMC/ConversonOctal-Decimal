package conversoroctaladecimal.BackEnd;;
import java_cup.runtime.* ;
import java_cup.runtime.Symbol;
import conversoroctaladecimal.BackEnd.sym;
import java.util.ArrayList;

/*--------------2 Declaraciones ------------*/
%%

%public 
%class AnalizadorLexico 
%cupdebug
%column
%line 
%cup 
%char
%full
%unicode

D = [0-9]

//enBlanco = [ \t\n| ]+
 //SaltoDeLinea = \r|\r\n

%{
    
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }

    private Symbol symbol(int type, Object value, int fila, int columna) {
        return new Symbol(type, yyline, yycolumn, value);
    }

    ArrayList<String> nombrePlanetas = new ArrayList();
%}

%%

<YYINITIAL> {
    ({D})       {System.out.println( "D..." +  yytext());return symbol(sym.DIGITO , yytext(), yyline, yycolumn);}
     .           {System.out.println( "Caracter no reconocido: "+ yytext() );}
}