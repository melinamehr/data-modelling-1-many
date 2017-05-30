The data in this part of the assignment uses the authors, articles, countries,
 provinces, cities, residences, and persons tables from earlier in the assignment.

 1. SELECT ID from authors WHERE name='Kara Melton';
SELECT title from articles WHERE author_id=8;

2. SELECT * FROM provinces;
SELECT * FROM cities WHERE province_id=14;

3. SELECT author_id, title from articles WHERE title='Coding Bootcamps and Emotional Labor';
SELECT name FROM authors WHERE id=4;

4. SELECT * FROM countries where name='Canada';
SELECT * FROM provinces where country_id=1;
SELECT COUNT(name) FROM provinces WHERE country_id=1;

5. SELECT * FROM residences WHERE address='4740 McDermott Street';
SELECT COUNT(name) FROM persons WHERE residence_id=9;

6.SELECT * FROM cities where id=11;
SELECT * FROM cities where id in(SELECT city_id from residences where address='4740 McDermott Street');

7. SELECT * FROM provinces where id in(SELECT province_id FROM cities where id in(SELECT city_id from residences where address='4740 McDermott Street'));

8. SELECT * FROM countries where id in(SELECT country_id FROM provinces where id in (SELECT province_id FROM cities where id in(SELECT city_id from residences where address='4740 McDermott Street')));

9. SELECT ID FROM persons WHERE name='Destini Davis';
SELECT * FROM persons WHERE id=3;
SELECT * FROM residences where ID=2;
SELECT * FROM countries where id in(SELECT country_id FROM provinces where id in (SELECT province_id FROM cities where id in(SELECT city_id from residences where address='537 Wyman Harbors')));

10. SELECT ID from authors WHERE name='Aditya Mukerjee';
SELECT COUNT(id) FROM articles WHERE author_id=2;
