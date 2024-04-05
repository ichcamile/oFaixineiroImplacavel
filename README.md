# O Faixineiro Implacável - Banco de Dados

Este repositório contém código SQL para criar e popular um banco de dados destinado a gerenciar um sistema de biblioteca para "O Faixineiro Implacável". O esquema do banco de dados inclui tabelas para livros, editoras e autores.

## Configuração

Para configurar o banco de dados de "O Faixineiro Implacável" em seu ambiente local, siga estas etapas:

1. Verifique se você possui um servidor MySQL instalado localmente ou acessível pela rede.
2. Clone este repositório em sua máquina local
3. Conecte-se ao seu servidor MySQL usando um cliente MySQL (por exemplo, MySQL Workbench, HeidiSQL ou o cliente de linha de comando MySQL).
4. Execute o script SQL `library.sql` em seu cliente MySQL para criar o banco de dados e tabelas e populá-las com dados de exemplo.

## Esquema do Banco de Dados

O esquema do banco de dados consiste nas seguintes tabelas:

- `Books`: Armazena informações sobre os livros de "O Faixineiro Implacável", incluindo título, autor, editora, ano de lançamento e ISBN.
- `publishing`: Contém dados sobre as editoras dos livros, incluindo nome e cidade.
- `author`: Armazena informações sobre os autores dos livros, incluindo nome e data de nascimento.

## Uso

Após configurar o banco de dados, você pode executar várias operações, como consultar livros, autores ou editoras, adicionar novas entradas, atualizar registros existentes e excluir entradas conforme necessário.

## Exemplos de Consultas

Aqui estão alguns exemplos de consultas SQL que você pode executar no banco de dados de "O Faixineiro Implacável":

1. Recuperar todos os livros:

```sql
SELECT * FROM Books;
```

2. Recuperar todos os autores:

```sql
SELECT * FROM author;
```

3. Recuperar todas as editoras:

```sql
SELECT * FROM publishing;
```

4. Encontrar livros publicados por uma editora específica:

```sql
SELECT * FROM Books WHERE publishing_id = (SELECT publishing_id FROM publishing WHERE publishing_name = 'Intrínseca');
```

## Tecnologia Utilizada
Este projeto foi desenvolvido apenas utilizando SQL para criação do banco de dados e das tabelas, bem como para inserção de dados de exemplo. Não há uso de outras tecnologias além do SQL neste projeto.

<img src="https://skillicons.dev/icons?i=mysql" />
