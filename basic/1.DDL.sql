-- 데이터베이스 생성
CREATE DATABASE board;

-- 데이터베이스 선택
USE board;

-- 테이블 신규 생성
CREATE TABLE author(
    id INT, name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    test1 VARCHAR(255),
    PRIMARY KEY (id)
    );

-- 테이블 목록 조회
SHOW TABLES;

-- 테이블 컬럼조회
DESCRIBE author;

-- post 테이블 신규 생성
CREATE TABLE posts(
    id INT PRIMARY KEY,
    title VARCHAR(255),
    content VARCHAR(255),
    author_id INT,
    FOREIGN KEY(author_id) REFERENCES author(id)
);

-- 테이블 컬럼상세조회
SHOW FULL COLUMNS FROM author;

-- 테이블 생성문 조회 (테이블 스키마 반환)
SHOW CREATE Table posts;

-- 테이블 제약조건 조회
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = "posts";

-- 테이블 index 조회
SHOW INDEX FROM posts;

-- ALTER문
-- 테이블 이름 변경
ALTER TABLE 테이블명 RENAME 새로운테이블명;
ALTER TABLE posts RENAME post;

-- 컬럼 추가(add)
ALTER TABLE 테이블명 ADD COLUMN 컬럼명 자료형 [NULL 또는 NOT NULL]
ALTER TABLE author ADD COLUMN role VARCHAR(50);

-- 필드 타입 변경(modify)
ALTER TABLE 테이블명 MODIFY COLUMN 컬럼명 타입 [제약조건]; -- 덮어쓰기(이전 속성들 그대로 추가)
ALTER TABLE author MODIFY COLUMN name VARCHAR(100) NOT NULL;

-- 컬럼 이름 변경 => content -> contents
ALTER TABLE 테이블명 CHANGE COLUMN 기존컬럼명 새로운컬럼명 타입[제약조건]; -- 얘도 덮어쓰기

-- 컬럼 삭제 => test1 컬럼삭제
ALTER TABLE 테이블명 DROP COLUMN 컬럼명;

-- Drop
-- 테이블 삭제
DROP TABLE 테이블이름

-- 테이블의 데이터만을 지우고 싶을 떄
DELETE FROM 테이블이름
TRUNCATE TABLE 테이블이름

-- IF EXISTS
-- 특정객체가 존재하는 경우에만 명령어 실행
DROP DATABASE 또는 TABLE IF EXISTS 특정객체