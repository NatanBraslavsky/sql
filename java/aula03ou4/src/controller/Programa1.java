package controller;

import java.util.Vector;

public class Programa1 {
    public static void main(String[] args) {
        Vector colecao = new Vector();

        String nome = "Gabriel";
        Integer idade = 23;
        Float altura = 1.73f;

        colecao.add(nome);
        colecao.add(idade);
        colecao.add(altura);

        System.out.println(colecao);
    }
}