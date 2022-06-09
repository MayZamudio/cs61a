.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog"; 


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students GROUP BY smallest HAVING count(*) <= 1;


CREATE TABLE matchmaker AS
  -- SELECT pet, song FROM students
  SELECT a.pet AS first, a.song AS second, a.color AS third, b.color AS fourth
  FROM students AS a, students AS b
  WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;

-- SOLUTION
-- CREATE TABLE matchmaker AS
--   SELECT a.pet, a.song, a.color, b.color FROM students AS a, students AS b
--     WHERE a.time < b.time AND a.pet = b.pet AND a.song = b.song;


CREATE TABLE sevens AS
  SELECT a.seven 
  FROM students AS a, numbers AS b
  WHERE a.number = 7 AND b."7"= "True" AND a.time = b.time;


CREATE TABLE avg_difference AS
  SELECT ROUND(AVG(ABS(number - smallest))) FROM students;

-- SOLUTION
-- CREATE TABLE avg_difference AS
--   SELECT round(avg(abs(number - smallest))) as avg_difference FROM students;