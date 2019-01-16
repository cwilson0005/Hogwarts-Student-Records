DROP TABLE IF EXISTS students;

CREATE TABLE students(
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house VARCHAR(255) REFERENCES houses(id) ON DELETE CASCADE,
  age NUMERIC(3)
);

CREATE TABLE houses(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);
