-- INSERT
 INSERT INTO author(id, name, email) VALUES (1, 'KIM', 'abc@naver.com');

-- UPDATE
테이블 레코드의 내용을 수정
UPDATE 테이블 이름 
    SET 필드이름1=데이터값1, 필드이름2=데이터값2, ...
    WHERE 필드이름=데이터값
WHERE 절을 생략하면 해당 테이블의 모든 레코드값이 위 설정대로 수정
UPDATE FROM author WHERE author_id=5;

-- DELETE
DELETE somewhere from author WHERE.....

-- SELECT
SELECT 필드이름 FROM 테이블이름 [WHERE조건]

-- 모든 필드 선택
SELECT * FROM member;

e.g.
    select * from author where id=1;
    select name, email from author where id=1;
    select * from author where id > 1;
    select * from author id > AND name='kim'; 

-- 이름 중복제거하고 조회
SELECT distinct name from author;

-- order by
select * from author order by name desc;

-- 반환할 행의 최대 개수
select * from author LIMIT number 

-- order by 멀티
select * from author order by name, email;

-- order by 
select * from author