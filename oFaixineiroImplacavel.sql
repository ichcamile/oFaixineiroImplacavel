DROP DATABASE IF EXISTS library;
CREATE DATABASE IF NOT EXISTS library;
USE library;
CREATE TABLE Books (
    books_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    author VARCHAR(255),
    publishing_company VARCHAR(255),
    year_release INT,
    isbn VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS publishing(
	publishing_id INT PRIMARY KEY AUTO_INCREMENT,
    publishing_name VARCHAR(60),
    publishing_city varchar(50)
);

CREATE TABLE IF NOT EXISTS author(
	author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(150),
    author_birth DATE
);

ALTER TABLE Books
DROP COLUMN author, 
DROP COLUMN publishing_company,
ADD author_id INT, 
ADD publishing_id INT,
ADD FOREIGN KEY (author_id) REFERENCES author(author_id),
ADD FOREIGN KEY (publishing_id) REFERENCES publishing(publishing_id)
;

INSERT INTO publishing (publishing_name, publishing_city) VALUES 
('Intrínseca', 'Rio de Janeiro'),
('Rocco', 'Rio de Janeiro'),
('Martins Fontes', 'São Paulo'),
('Little, Brown and Company', 'New York'),
('Companhia Editora Nacional', 'São Paulo'),
('Nova Fronteira', 'Rio de Janeiro'),
('Companhia das Letras', 'São Paulo'),
('Martin Claret', 'São Paulo'),
('Companhia Editora Nacional', 'São Paulo'),
('Penguin Companhia', 'São Paulo');



INSERT INTO author(author_name, author_birth) VALUES 
('John Green', '1977-08-24'),
('J.K. Rowling', '1965-07-31'),
('J.R.R. Tolkien', '1892-01-03'),
('George Orwell','1903-06-25'),
('J.D. Salinger', '1919-01-01'),
('Rick Riordan', '1964-06-05'),
('João Guimarães Rosa', '1908-06-27'),
('Machado de Assis', '1839-06-21'),
('Graciliano Ramos', '1892-10-27'),
('Mário de Andrade', '1893-10-09'),
('Aluísio Azevedo', '1857-04-14');



INSERT INTO Books (title, author_id, publishing_id, year_release, isbn) VALUES 
('A Culpa é das Estrelas', 1 , 1 , 2012, '978-85-8057-346-6'),
('Harry Potter e a Pedra Filosofal', 2, 2 , 1997, '9788532511010'),
('O Senhor dos Anéis: A Sociedade do Anel', 3, 3, 1954, '9788533603149'),
('1984', 4 , 4, 1949, '978-85-221-0616-9'),
('The Catcher in the Rye', 5, 5, '1951', '9780316769488'),
('Percy Jackson e o Ladrão de Raios', 6, 1, 2005, '9788598078355'),
('Grande Sertão: Veredas', 7, 6, 1956, '978-85-209-2325-1'),
('Memórias Póstumas de Brás Cubas', 8, 5, 1881, '9788535910663'),
('Vidas Secas', 9, 5, 1938, '9788572326972'),
('O Alienista', 8, 8, 1882, '9788572327429'),
('O Cortiço', 11, 9, 1890, '9788579027048'),
('Dom Casmurro', 8, 9, 1899, '9788583862093'),
('Macunaíma', 10, 5, 1928, '9788503012302');








