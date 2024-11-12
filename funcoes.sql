
-- 1. Função para Consultar Inscrições de um Estudante
CREATE FUNCTION consultar_inscricoes(id_consultar INT)
RETURNS TABLE(curso_nome VARCHAR, data_inscricao DATE) AS $$
BEGIN
    RETURN QUERY
    SELECT c.nome, i.data_inscricao
    FROM inscricoes i
    JOIN cursos c ON i.curso_id = c.id
    WHERE i.estudante_id = id_consultar;
END;
$$ LANGUAGE plpgsql;

    

SELECT * FROM consultar_inscricoes(1);

DROP FUNCTION consultar_inscricoes(INT);


