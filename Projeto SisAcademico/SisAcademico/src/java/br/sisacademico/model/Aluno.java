package br.sisacademico.model;

public class Aluno {
    private int idAluno;
    private String nome;
    private int ra;
    private Curso curso;

    public Aluno() {
    }

    public Aluno(int idAluno, String nome, int ra, Curso curso) {
        this.idAluno = idAluno;
        this.nome = nome;
        this.ra = ra;
        this.curso = curso;
    }
    
    public int getIdAluno() {
        return idAluno;
    }

    public void setIdAluno(int idAluno) {
        this.idAluno = idAluno;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getRa() {
        return ra;
    }

    public void setRa(int ra) {
        this.ra = ra;
    }

    public Curso getCurso() {
        return curso;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }
}
