-- SCRIPT DO BANCO 
--PROEJETO: SIS_ACADEMICO

--TABELA DE USUÁRIOS
CREATE TABLE usuario(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(20) NOT NULL UNIQUE,
    senha VARCHAR(128) NOT NULL
);

--pré-cadastro de alguns usuários
INSERT INTO usuario (usuario, senha)
VALUES ('traue', '10a9c136d796bab18d3e144092a4f20a');  --Senha123 (MD5)

INSERT INTO usuario (usuario, senha)
VALUES ('isaias', '10a9c136d796bab18d3e144092a4f20a'); --Senha123 (MD5)

INSERT INTO usuario (usuario, senha)
VALUES ('lucas', '10a9c136d796bab18d3e144092a4f20a');  --Senha123 (MD5)

--TABELA DE CURSSO
CREATE TABLE curso(
	idCurso INT PRIMARY KEY AUTO_INCREMENT,
    curso VARCHAR(50),
    tipo_curso VARCHAR(30)
);


--tabela de alunos
CREATE TABLE aluno(
    idAluno INT PRIMARY KEY AUTO_INCREMENT,
    ra INT NOT NULL UNIQUE,
    nome VARCHAR(100) NOT NULL,
    idCurso INT,
    	CONSTRAINT fk_aluno_curso FOREIGN KEY (idCurso)
    	REFERENCES curso(idCurso)
);

--ALGUMAS INSERÇÕES DE CURSOS:
INSERT INTO curso (curso, tipo_curso)
VALUES ('TADS', 'Tecnologo');

INSERT INTO curso (curso, tipo_curso)
VALUES ('Ciência da Computação', 'Bacharelado');

INSERT INTO curso (curso, tipo_curso)
VALUES ('Redes', 'Tecnólogo');

INSERT INTO curso (curso, tipo_curso)
VALUES ('Dancinha do TikTok', 'Doutorado');

INSERT INTO curso (curso, tipo_curso)
VALUES ('Física', 'Livre');


--ALGUMAS INSERÇÕES DE ALUNOS:
INSERT INTO aluno(ra, nome, idCurso)
VALUES (1234, 'Thiago', 2);

INSERT INTO aluno(ra, nome, idCurso)
VALUES (122, 'Mia', 3);

INSERT INTO aluno(ra, nome, idCurso)
VALUES (3211, 'Isaias', 1);

INSERT INTO aluno(ra, nome, idCurso)
VALUES (666, 'Luci', 4);

INSERT INTO aluno(ra, nome, idCurso)
VALUES (333, 'Mikey', 1);

INSERT INTO aluno(ra, nome, idCurso)
VALUES (444, 'Marcio Klein', 1);