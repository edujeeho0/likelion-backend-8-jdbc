DROP TABLE IF EXISTS article;

CREATE TABLE article(
    id integer primary key autoincrement,
    title text,
    content text
);

DROP TABLE IF EXISTS user;

CREATE TABLE user(
    id integer primary key autoincrement,
    username text unique,
    password text,
    first_name text,
    last_name text,
    email text
);
