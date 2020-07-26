/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package combersoroctaladecimal.BackEnd;

/**
 *
 * @author astridmc
 */
public class ErrorS {
    
    private String Lexema;
    private int columna;
    private int fila;
    private String tipo;

    public ErrorS(String Lexema,int fila,int columna, String mensaje) {
        this.Lexema = Lexema;
        this.columna = columna;
        this.fila = fila;
        this.tipo = mensaje;
    }

    public String getLexema() {
        return Lexema;
    }

    public void setLexema(String Lexema) {
        this.Lexema = Lexema;
    }

    public int getColumna() {
        return columna;
    }

    public void setColumna(int columna) {
        this.columna = columna;
    }

    public int getFila() {
        return fila;
    }

    public void setFila(int fila) {
        this.fila = fila;
    }

    public String getTipo() {
        return tipo;
    }

    public void sertTipo(String mensaje) {
        this.tipo = mensaje;
    }
    
    
}
