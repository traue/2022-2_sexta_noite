package br.uninove.poo;

public class HelloWorld {
    
    //Isso é um comentário
    /*
        Isso é um bloco de
        comentário! :D
    */
    
    public static void main(String[] args) {
        System.out.println("Iniciando nosso primeiro projeto!");
        
        String nome = "Thiago G. Traue";
        char sexo = 'N';
        int anoNascimento = 1987;
        //java usa normalmente operações matemáticas:
        int idade = 2022 - anoNascimento; 
        float altura = 1.83f;
        boolean fumante = false;
        boolean temCarroAntigo = true;
        
        //imprimindo as informações:
        System.out.println("Olá " + nome + ", tudo bem?");
        System.out.println("Idade informada: " + idade);
        System.out.println("Altura informada: " + altura);
        System.out.println("Sexo informado: " + sexo);
        //System.out.println("É fumante? " + fumante);
        
        //desvio condicional do Java
        if(fumante) {
            System.out.println("Fumante: Sim");
        } else {
            System.out.println("Fumante: Não");
        }
        
        if(temCarroAntigo) {
            System.out.println("Antigomobilista!");
        } else {
            System.out.println("Carrinho moderninho hein!");
        }
    }

}