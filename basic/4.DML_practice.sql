INSERT INTO author(id, name, email) VALUES (1, 'J', 'j@naver.com');
INSERT INTO author(id, name, email, role) VALUES (2, 'K', 'k@naver.com', 'user');
INSERT INTO author(id, name, email) VALUES (3, 'L', 'l@naver.com');
INSERT INTO author(id, name, email,password) VALUES (4, 'M', 'm@naver.com', 'qqqq111');
INSERT INTO author(id, name, email) VALUES (5, 'N', 'n@naver.com');

INSERT INTO posts(id, title, contents, author_id) VALUES (1, 'hello', 'a', 1);
INSERT INTO posts(id, title, contents, author_id) VALUES (2, 'helo', 'b', 2);
INSERT INTO posts(id, title, contents, author_id) VALUES (3, 'hlo', 'c', 3);
INSERT INTO posts(id, title, contents) VALUES (4, 'o', 'd');
INSERT INTO posts(id, title, contents) VALUES (5, 'llo', 'e');

UPDATE posts SET author_id = null where author_id is not null; 
DELETE from author;

UPDATE author set email='abc@gmail.com', name='avd' where author_id=1;

DELETE FROM post author_id=2;
DELETE FROM author where id=2;

UPDATE post set author_id = null where author_id = 2;
DELETE from author where id=2;

SELECT * from author;
select name from author;
select * from author where id =1;
select * from author where id>10;
select * from author where id > 10 and name='abc';