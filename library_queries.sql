-- 1. Titles of all books borrowed at least once
SELECT DISTINCT l.titolo
FROM libro l
JOIN prestito p ON l.ISBN = p.ISBN_libro;

-- 2. First and last name of authors who published books from 2010 onwards
SELECT DISTINCT a.nome, a.cognome
FROM autore a
JOIN libro l ON a.ID_autore = l.ID_autore
WHERE l.anno_pubblicazione >= 2010;

-- 3. First and last name of clients who borrowed at least three books
SELECT c.nome, c.cognome
FROM cliente c
JOIN prestito p ON c.CF = p.CF_cliente
GROUP BY c.CF, c.nome, c.cognome
HAVING COUNT(*) >= 3;

-- 4. Publisher name and number of books published, in descending order
SELECT e.nome_editore, COUNT(l.ISBN) AS numero_libri
FROM editore e
LEFT JOIN libro l ON e.ID_editore = l.ID_editore
GROUP BY e.ID_editore, e.nome_editore
ORDER BY numero_libri DESC;

-- 5. Clients who borrowed books but haven't returned at least one yet
SELECT DISTINCT c.nome, c.cognome
FROM cliente c
JOIN prestito p ON c.CF = p.CF_cliente
WHERE p.data_restituzione IS NULL;

-- 6. ISBN and title of books borrowed more than 30 days ago and not yet returned
SELECT DISTINCT l.ISBN, l.titolo
FROM libro l
JOIN prestito p ON l.ISBN = p.ISBN_libro
WHERE p.data_restituzione IS NULL
  AND p.data_prestito < DATE_SUB(CURDATE(), INTERVAL 30 DAY);