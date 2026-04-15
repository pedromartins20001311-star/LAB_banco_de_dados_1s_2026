/** livros ruins de harry poter */

SELECT l.*
FROM livro l
JOIN autor a ON l.id_autor = a.id_autor
WHERE a.nome = 'J.K. Rowling';