-- SQL Injection
INSERT INTO user(username, password, first_name, last_name, email)
VALUES
    ('alex', 'aaaa', 'Alexander', 'Rodriguez', 'a.rod@gmail.com'),
    ('brad', 'bbb', 'Bradley', 'Snyder', 'bradS@gmail.com'),
    ('chad', 'ccccc', 'Chadwick', 'Bradford', 'moneyball@gmail.com');

-- SQL을 작성할건데,
-- 사용자가 아이디랑 비밀번호를 제출하면
-- 해당 아이디를 가진 행의 데이터의 비밀번호가 제출한 비밀번호와 일치하는지를 비교
-- alex, 1234
SELECT *
FROM user
WHERE
    username = '%s' AND password = '%s';
-- SQL Injection
-- username: alex
-- password: 1' OR '1' = '1
SELECT *
FROM user
WHERE
    username = 'alex' AND password = '1' OR '1' = '1';


INSERT INTO article(title, content) VALUES ('%s', '%s');
-- content: 'a'); DROP TABLE article; --'
INSERT INTO article(title, content) VALUES ('%s', 'a'); DROP TABLE article; --');
