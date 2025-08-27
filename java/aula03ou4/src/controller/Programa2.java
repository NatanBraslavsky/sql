package controller;
import java.util.Vector;

public class Programa2 {
    public static void main(String[] args) {
        Vector<String> pessoas = new Vector<String>();
        pessoas.add("José");
        pessoas.add("Maria");
        pessoas.add("Fernanda");
        pessoas.add("Mariana");
        pessoas.add("Gabriel");
        pessoas.add("Tainá");
        System.out.println(pessoas);
        System.out.println(pessoas.size());
        System.out.println(pessoas.firstElement());
        System.out.println(pessoas.lastElement());
        System.out.println(pessoas.get(2));
        System.out.println(pessoas.indexOf("Tainá"));
    }
}
