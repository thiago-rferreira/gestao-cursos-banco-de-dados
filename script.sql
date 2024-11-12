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
    id_inscricao SERIAL PRIMARY KEY,
    curso_id INT,
    estudante_id INT,
    data_inscricao DATE,
    CONSTRAINT fk_curso FOREIGN KEY (curso_id) REFERENCES cursos(id),
    CONSTRAINT fk_estudante FOREIGN KEY (estudante_id) REFERENCES estudantes(id)
);

CREATE TABLE inscricoes (
    id_inscricao SERIAL PRIMARY KEY,
    curso_id INT,
    estudante_id INT,
    data_inscricao DATE,
    CONSTRAINT fk_curso FOREIGN KEY (curso_id) REFERENCES cursos(id) ON DELETE CASCADE,
    CONSTRAINT fk_estudante FOREIGN KEY (estudante_id) REFERENCES estudantes(id) ON DELETE CASCADE
);



--JOIN 
SELECT e.nome AS Estudante, c.nome AS Curso, i.data_inscricao
FROM inscricoes i
JOIN estudantes e ON i.estudante_id = e.id
JOIN cursos c ON i.curso_id = c.id;

CREATE FUNCTION obter_inscricoes_estudantes()
RETURNS TABLE(Estudante VARCHAR, Curso VARCHAR, Data_Inscricao DATE) AS $$
BEGIN
    RETURN QUERY
    SELECT e.nome AS Estudante, c.nome AS Curso, i.data_inscricao
    FROM inscricoes i
    JOIN estudantes e ON i.estudante_id = e.id
    JOIN cursos c ON i.curso_id = c.id;
END;
$$ LANGUAGE plpgsql;

