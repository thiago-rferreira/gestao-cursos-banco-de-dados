CREATE DATABASE sistema_cursos;

\c sistema_cursos;

CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE estudantes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(180) UNIQUE NOT NULL
);

CREATE TABLE inscricoes (
    curso_id INT REFERENCES cursos(id) ON DELETE CASCADE,
    estudante_id INT REFERENCES estudantes(id) ON DELETE CASCADE,
    data_inscricao DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (curso_id, estudante_id)
);
