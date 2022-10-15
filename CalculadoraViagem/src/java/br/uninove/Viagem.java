package br.uninove;

public class Viagem {
    private int distancia;
    private float consumo;
    private float vCombustivel;
    private float vPedagio;
    private float vTotalViagem;
    private float qtdLitros;
    private float vTotalCombustivel;

    public int getDistancia() {
        return distancia;
    }

    public void setDistancia(int distancia) {
        this.distancia = distancia;
    }

    public float getConsumo() {
        return consumo;
    }

    public void setConsumo(float consumo) {
        this.consumo = consumo;
    }

    public float getvCombustivel() {
        return vCombustivel;
    }

    public void setvCombustivel(float vCombustivel) {
        this.vCombustivel = vCombustivel;
    }

    public float getvPedagio() {
        return vPedagio;
    }

    public void setvPedagio(float vPedagio) {
        this.vPedagio = vPedagio;
    }

    public float getvTotalViagem() {
        return getvTotalCombustivel() + vPedagio;
    }

    public void setvTotalViagem(float vTotalViagem) {
        this.vTotalViagem = vTotalViagem;
    }

    public float getQtdLitros() {
        return distancia / consumo;
    }

    public void setQtdLitros(float qtdLitros) {
        this.qtdLitros = qtdLitros;
    }

    public float getvTotalCombustivel() {
        return vCombustivel * getQtdLitros();
    }

    public void setvTotalCombustivel(float vTotalCombustivel) {
        this.vTotalCombustivel = vTotalCombustivel;
    }
}
