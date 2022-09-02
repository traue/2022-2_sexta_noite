package br.uninove.poo;

import java.util.Scanner;


/*
    A ideia aqui é criar uma mini calculadora
    onde o usuário digita dois valores 
    e é exibido à ele as 4 operações sobre estes 
    valores além do resto da divisão :D
 */
public class MiniCalculadora {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        float v1, v2, soma, sub, mult, div, resto;

        System.out.print("Informe o valor 1: ");
        v1 = sc.nextFloat();

        System.out.print("Informe o valor 2: ");
        v2 = sc.nextFloat();

        soma = v1 + v2;
        sub = v1 - v2;
        mult = v1 * v2;

        System.out.println("A soma é: " + soma);
        System.out.println("A subtração é: " + sub);
        System.out.println("A multiplicação é: " + mult);

        if (v2 == 0) {
            System.out.println("A divisão não pode ser calculada!");
        } else {
            div = v1 / v2;
            resto = v1 % v2;
            System.out.println("A divisão é: " + div);
            System.out.println("O resto da divisão é: " + resto);
        }
    }
}