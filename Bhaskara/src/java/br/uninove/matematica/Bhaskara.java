package br.uninove.matematica;

public class Bhaskara {

    //variáveis
    private double vA, vB, vC, delta, x1, x2;

    //Encapsulamento - Métodos modificadores de acesso (sets e gets)
    public double getvA() {
        return vA;
    }

    public void setvA(double vA) {
        this.vA = vA;
    }

    public double getvB() {
        return vB;
    }

    public void setvB(double vB) {
        this.vB = vB;
    }

    public double getvC() {
        return vC;
    }

    public void setvC(double vC) {
        this.vC = vC;
    }

    public double getDelta() {
        return delta;
    }

    public void setDelta(double delta) {
        this.delta = delta;
    }

    public double getX1() {
        return x1;
    }

    public void setX1(double x1) {
        this.x1 = x1;
    }

    public double getX2() {
        return x2;
    }

    public void setX2(double x2) {
        this.x2 = x2;
    }

    //Métodos de negócio
    public void calculaBhaskara() {
        calculaDelta();
        if (delta > 0) {
            calculaRaizes();
        }
    }

    public double calculaDelta() {
        delta = (vB * vB) - 4 * vA * vC;
        return delta;
    }

    public void calculaRaizes() {
        x1 = ((-1 * vB) + Math.sqrt(delta)) / (2 * vA);
        x2 = ((-1 * vB) - Math.sqrt(delta)) / (2 * vA);
    }
}
