# Projeto de Banco de Dados 🚀📊

## Curso Técnico de Desenvolvimento de Sistemas

### Descrição da Atividade

Nesta atividade, na disciplina de Banco de Dados do curso técnico de **DESENVOLVIMENTO DE SISTEMAS**, foi criada uma estrutura de dados que representa as entidades e relacionamentos necessários para a gestão de cursos e inscrições de estudantes.

- **Criação do Banco de Dados**: Implementação do banco de dados utilizando PostgreSQL como Sistema de Gerenciamento de Banco de Dados (SGBD).
- **Consultas SQL**: Desenvolvimento de consultas SQL para manipulação e recuperação de dados.

### Requisitos

1. **Entidades Principais**:
    - **Cursos**: Armazena informações dos cursos oferecidos.
    - **Estudantes**: Armazena informações dos estudantes que podem se inscrever nos cursos.
    - **Inscrições**: Representa a relação de muitos para muitos entre estudantes e cursos, com dados adicionais, como a data de inscrição.

2. **Relacionamentos**:
    - Um curso pode ter vários estudantes inscritos.
    - Um estudante pode se inscrever em vários cursos.

### Estrutura das Tabelas

1. **Tabela Cursos**
   - `id`: Identificador único do curso (chave primária).
   - `nome`: Nome do curso.
   - `descricao`: Descrição do curso.

2. **Tabela Estudantes**
   - `id`: Identificador único do estudante (chave primária).
   - `nome`: Nome do estudante.
   - `email`: Endereço de e-mail do estudante (único).

3. **Tabela Inscrições**
   - `curso_id`: Identificador do curso, referenciando a tabela `cursos` (chave estrangeira).
   - `estudante_id`: Identificador do estudante, referenciando a tabela `estudantes` (chave estrangeira).
   - `data_inscricao`: Data da inscrição no curso.

### Consultas SQL de Exemplo

1. **Inserção de dados de exemplo em Cursos e Estudantes**:

```sql
    INSERT INTO cursos (nome, descricao) VALUES
    ('Matemática', 'Curso de Matemática Básica'),
    ('Programação', 'Introdução Programação com JS');

    INSERT INTO estudantes (nome, email) VALUES
    ('Mariana Cardoso', 'mariana@gmail.com'),
    ('Samuel Braga', 'samuel@gmail.com');

    INSERT INTO inscricoes (curso_id, estudante_id, data_inscricao) VALUES
    (1, 1, '2024-01-10'),
    (2, 1, '2024-01-15'),
    (1, 2, '2024-01-20');
``` 
