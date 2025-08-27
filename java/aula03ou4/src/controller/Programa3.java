package controller;
import java.util.Vector;
import model.Animal;

public class Programa3 {
    public static void main(String[] args) {
        Vector<Animal> animais = new Vector<Animal>();
        animais.add(new Animal("Betinha", "Canina", "Street Dog"));
        animais.add(new Animal("Pachola", "Canina", "Street Dog"));
        animais.add(new Animal("Mel", "Canina", "Poodle"));
        animais.add(new Animal("Luana", "Canina", "Street Dog"));
        animais.add(new Animal("Solange", "Canina", "Street Dog"));

        System.out.println(animais);
    }
}
