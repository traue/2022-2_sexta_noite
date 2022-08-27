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
        
        if(v2 == 0) {
            System.out.println("A divisão não pode ser calculada!");
        } else {
            div = v1 / v2;
        }
        
        //TENTEM TERMINAR ESTE CÓDIGO PARA SEMANA QUE VEM :D
        //FALTA: EXIBIR CADA UM DOS RESULTADOS (AINDA NÃO CALCULAMOS O RESTO!)
        
    }
}

//DESAFIO 2: IMPLEMENTAR UMA DESSA PARA IMC (com a classificação!)
