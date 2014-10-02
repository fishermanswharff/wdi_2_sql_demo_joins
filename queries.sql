\c join_demo

/*
  authors have names and birthdays
  books have authors, titles, published_on dates, and price
*/

-- Inner Join
-- —————————————————————————————————————————————————
SELECT b.id, b.title, b.published_on, a.name, a.birthday
    FROM authors a, books b
    WHERE a.id = b.author_id;

/*
 id |                   title                   | published_on |        name         |  birthday  
----+-------------------------------------------+--------------+---------------------+------------
  1 | The Casual Vacancy                        | 2012-09-27   | JK Rowling          | 1965-07-31
  2 | Harry Potter and the Deathly Hallows      | 2007-07-21   | JK Rowling          | 1965-07-31
  3 | Harry Potter and the Half-Blood Prince    | 2005-07-16   | JK Rowling          | 1965-07-31
  4 | Harry Potter and the Order of the Phoenix | 2003-06-23   | JK Rowling          | 1965-07-31
  5 | Harry Potter and the Goblet of Fire       | 2000-07-08   | JK Rowling          | 1965-07-31
  6 | Harry Potter and the Prisoner of Azkaban  | 1999-07-08   | JK Rowling          | 1965-07-31
  7 | Harry Potter and the Chamber of Secrets   | 1998-07-02   | JK Rowling          | 1965-07-31
  8 | Harry Potter and the Philosophers Stone   | 1997-06-26   | JK Rowling          | 1965-07-31
  9 | The Tommyknockers                         | 1987-11-10   | Stephen King        | 1947-09-21
 10 | It                                        | 1986-09-15   | Stephen King        | 1947-09-21
 11 | The Stand                                 | 1978-09-01   | Stephen King        | 1947-09-21
 12 | The Shining                               | 1977-01-28   | Stephen King        | 1947-09-21
 13 | Salems Lot                                | 1975-10-17   | Stephen King        | 1947-09-21
 14 | Carrie                                    | 1974-04-05   | Stephen King        | 1947-09-21
 15 | Little Women                              | 1868-01-01   | Louisa May Alcott   | 1832-11-29
 16 | Resistance to Civil Government            | 1849-07-16   | Henry David Thoreau | 1817-07-12
 17 | Walden                                    | 1854-08-09   | Henry David Thoreau | 1817-07-12
 18 | Pride and Prejudice                       | 1813-01-28   | Jane Austen         | 1775-12-16
 19 | Sense and Sensibility                     | 1811-01-01   | Jane Austen         | 1775-12-16
 20 | Wuthering Heights                         | 1847-12-01   | Emily Brontë        | 1818-07-30
 21 | A Song Flung Up to Heaven                 | 2002-01-01   | Maya Angelou        | 1928-04-04
 22 | I Know Why the Caged Bird Sings           | 1969-01-01   | Maya Angelou        | 1928-04-04
 23 | To Kill A Mockingbird                     | 1960-07-11   | Harper Lee          | 1926-04-28
*/

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- Left joins
-- —————————————————————————————————————————————————
SELECT books.title, authors.name 
  FROM books
  LEFT JOIN authors
  ON (books.author_id = authors.id);
/*
                   title                   |        name         
-------------------------------------------+---------------------
 The Casual Vacancy                        | JK Rowling
 Harry Potter and the Deathly Hallows      | JK Rowling
 Harry Potter and the Half-Blood Prince    | JK Rowling
 Harry Potter and the Order of the Phoenix | JK Rowling
 Harry Potter and the Goblet of Fire       | JK Rowling
 Harry Potter and the Prisoner of Azkaban  | JK Rowling
 Harry Potter and the Chamber of Secrets   | JK Rowling
 Harry Potter and the Philosophers Stone   | JK Rowling
 The Tommyknockers                         | Stephen King
 It                                        | Stephen King
 The Stand                                 | Stephen King
 The Shining                               | Stephen King
 Salems Lot                                | Stephen King
 Carrie                                    | Stephen King
 Little Women                              | Louisa May Alcott
 Resistance to Civil Government            | Henry David Thoreau
 Walden                                    | Henry David Thoreau
 Pride and Prejudice                       | Jane Austen
 Sense and Sensibility                     | Jane Austen
 Wuthering Heights                         | Emily Brontë
 A Song Flung Up to Heaven                 | Maya Angelou
 I Know Why the Caged Bird Sings           | Maya Angelou
 To Kill A Mockingbird                     | Harper Lee
*/

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


-- LEFT OUTER JOIN
-- —————————————————————————————————————————————————
SELECT * FROM books
  LEFT OUTER JOIN authors
  ON (books.author_id = authors.id)
  WHERE (authors.birthday > '1900-01-01');
/*
  id |                   title                   | published_on | price | author_id | id |     name     |  birthday  
 ----+-------------------------------------------+--------------+-------+-----------+----+--------------+------------
   1 | The Casual Vacancy                        | 2012-09-27   | 14.95 |         1 |  1 | JK Rowling   | 1965-07-31
   2 | Harry Potter and the Deathly Hallows      | 2007-07-21   | 24.95 |         1 |  1 | JK Rowling   | 1965-07-31
   3 | Harry Potter and the Half-Blood Prince    | 2005-07-16   | 24.95 |         1 |  1 | JK Rowling   | 1965-07-31
   4 | Harry Potter and the Order of the Phoenix | 2003-06-23   | 24.95 |         1 |  1 | JK Rowling   | 1965-07-31
   5 | Harry Potter and the Goblet of Fire       | 2000-07-08   | 24.95 |         1 |  1 | JK Rowling   | 1965-07-31
   6 | Harry Potter and the Prisoner of Azkaban  | 1999-07-08   | 24.95 |         1 |  1 | JK Rowling   | 1965-07-31
   7 | Harry Potter and the Chamber of Secrets   | 1998-07-02   | 24.95 |         1 |  1 | JK Rowling   | 1965-07-31
   8 | Harry Potter and the Philosophers Stone   | 1997-06-26   | 24.95 |         1 |  1 | JK Rowling   | 1965-07-31
   9 | The Tommyknockers                         | 1987-11-10   | 11.99 |         2 |  2 | Stephen King | 1947-09-21
  10 | It                                        | 1986-09-15   |  9.95 |         2 |  2 | Stephen King | 1947-09-21
  11 | The Stand                                 | 1978-09-01   | 10.95 |         2 |  2 | Stephen King | 1947-09-21
  12 | The Shining                               | 1977-01-28   | 11.95 |         2 |  2 | Stephen King | 1947-09-21
  13 | Salems Lot                                | 1975-10-17   |  9.95 |         2 |  2 | Stephen King | 1947-09-21
  14 | Carrie                                    | 1974-04-05   | 11.95 |         2 |  2 | Stephen King | 1947-09-21
  21 | A Song Flung Up to Heaven                 | 2002-01-01   |  7.95 |         7 |  7 | Maya Angelou | 1928-04-04
  22 | I Know Why the Caged Bird Sings           | 1969-01-01   |  8.95 |         7 |  7 | Maya Angelou | 1928-04-04
  23 | To Kill A Mockingbird                     | 1960-07-11   |  6.95 |        11 | 11 | Harper Lee   | 1926-04-28
(23 rows)
*/

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- Right joins
SELECT books.title, authors.name FROM books
  RIGHT JOIN authors
  ON (books.author_id = authors.id)

-- OUTER JOINS
-- —————————————————————————————————————————————————
SELECT books.title, authors.name FROM books
  LEFT OUTER JOIN authors
  ON (books.author_id = authors.id)
  WHERE (authors.birthday > '1900-01-01')
  ORDER BY authors.birthday;
/*
                    title                   |     name     
 -------------------------------------------+--------------
  To Kill A Mockingbird                     | Harper Lee
  A Song Flung Up to Heaven                 | Maya Angelou
  I Know Why the Caged Bird Sings           | Maya Angelou
  The Tommyknockers                         | Stephen King
  It                                        | Stephen King
  The Stand                                 | Stephen King
  The Shining                               | Stephen King
  Salems Lot                                | Stephen King
  Carrie                                    | Stephen King
  Harry Potter and the Half-Blood Prince    | JK Rowling
  Harry Potter and the Deathly Hallows      | JK Rowling
  Harry Potter and the Order of the Phoenix | JK Rowling
  Harry Potter and the Goblet of Fire       | JK Rowling
  Harry Potter and the Prisoner of Azkaban  | JK Rowling
  Harry Potter and the Chamber of Secrets   | JK Rowling
  Harry Potter and the Philosophers Stone   | JK Rowling
  The Casual Vacancy                        | JK Rowling
*/



-- FULL JOINS
-- —————————————————————————————————————————————————
SELECT * FROM books 
  FULL JOIN authors 
  ON (books.author_id = authors.id);

/*
 id |                   title                   | published_on | price | author_id | id |        name         |  birthday  
----+-------------------------------------------+--------------+-------+-----------+----+---------------------+------------
  1 | The Casual Vacancy                        | 2012-09-27   | 14.95 |         1 |  1 | JK Rowling          | 1965-07-31
  2 | Harry Potter and the Deathly Hallows      | 2007-07-21   | 24.95 |         1 |  1 | JK Rowling          | 1965-07-31
  3 | Harry Potter and the Half-Blood Prince    | 2005-07-16   | 24.95 |         1 |  1 | JK Rowling          | 1965-07-31
  4 | Harry Potter and the Order of the Phoenix | 2003-06-23   | 24.95 |         1 |  1 | JK Rowling          | 1965-07-31
  5 | Harry Potter and the Goblet of Fire       | 2000-07-08   | 24.95 |         1 |  1 | JK Rowling          | 1965-07-31
  6 | Harry Potter and the Prisoner of Azkaban  | 1999-07-08   | 24.95 |         1 |  1 | JK Rowling          | 1965-07-31
  7 | Harry Potter and the Chamber of Secrets   | 1998-07-02   | 24.95 |         1 |  1 | JK Rowling          | 1965-07-31
  8 | Harry Potter and the Philosophers Stone   | 1997-06-26   | 24.95 |         1 |  1 | JK Rowling          | 1965-07-31
  9 | The Tommyknockers                         | 1987-11-10   | 11.99 |         2 |  2 | Stephen King        | 1947-09-21
 10 | It                                        | 1986-09-15   |  9.95 |         2 |  2 | Stephen King        | 1947-09-21
 11 | The Stand                                 | 1978-09-01   | 10.95 |         2 |  2 | Stephen King        | 1947-09-21
 12 | The Shining                               | 1977-01-28   | 11.95 |         2 |  2 | Stephen King        | 1947-09-21
 13 | Salems Lot                                | 1975-10-17   |  9.95 |         2 |  2 | Stephen King        | 1947-09-21
 14 | Carrie                                    | 1974-04-05   | 11.95 |         2 |  2 | Stephen King        | 1947-09-21
 15 | Little Women                              | 1868-01-01   |  4.95 |         3 |  3 | Louisa May Alcott   | 1832-11-29
 16 | Resistance to Civil Government            | 1849-07-16   |  2.95 |         4 |  4 | Henry David Thoreau | 1817-07-12
 17 | Walden                                    | 1854-08-09   |  4.95 |         4 |  4 | Henry David Thoreau | 1817-07-12
 18 | Pride and Prejudice                       | 1813-01-28   |  4.95 |         5 |  5 | Jane Austen         | 1775-12-16
 19 | Sense and Sensibility                     | 1811-01-01   |  5.95 |         5 |  5 | Jane Austen         | 1775-12-16
 20 | Wuthering Heights                         | 1847-12-01   |  3.95 |         6 |  6 | Emily Brontë        | 1818-07-30
 21 | A Song Flung Up to Heaven                 | 2002-01-01   |  7.95 |         7 |  7 | Maya Angelou        | 1928-04-04
 22 | I Know Why the Caged Bird Sings           | 1969-01-01   |  8.95 |         7 |  7 | Maya Angelou        | 1928-04-04
 23 | To Kill A Mockingbird                     | 1960-07-11   |  6.95 |        11 | 11 | Harper Lee          | 1926-04-28
    |                                           |              |       |           | 12 | Truman Capote       | 1924-09-30
    |                                           |              |       |           | 10 | J. R. R. Tolkien    | 1892-01-03
    |                                           |              |       |           |  8 | Virginia Woolf      | 1882-01-25
    |                                           |              |       |           |  9 | Ursula K. Le Guin   | 1929-10-21
*/



SELECT books.id, books.title, books.published_on, authors.name, authors.birthday FROM books
  LEFT OUTER JOIN authors
  ON (books.author_id = authors.id)
  WHERE (authors.birthday < '1900-01-01');

/*
 id |              title              | published_on |        name         |  birthday  
----+---------------------------------+--------------+---------------------+------------
 15 | Little Women                    | 1868-01-01   | Louisa May Alcott   | 1832-11-29
 16 | Resistance to Civil Government  | 1849-07-16   | Henry David Thoreau | 1817-07-12
 17 | Walden                          | 1854-08-09   | Henry David Thoreau | 1817-07-12
 18 | Pride and Prejudice             | 1813-01-28   | Jane Austen         | 1775-12-16
 19 | Sense and Sensibility           | 1811-01-01   | Jane Austen         | 1775-12-16
 20 | Wuthering Heights               | 1847-12-01   | Emily Brontë        | 1818-07-30

*/  



SELECT books.title, authors.name FROM books 
  LEFT JOIN authors
  ON (books.author_id = authors.id);



-- is it possible to overlad a database with query requests and render it useless? are there security concerns? 



/*
INNER JOIN
LEFT JOIN
LEFT OUTER JOIN

Group By
Distinct
Having
Max
Min
Aug
Count

*/