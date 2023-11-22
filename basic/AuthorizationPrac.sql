-- 유저조회
select * from MYSQL.user;
-- 유저삭제
drop user 'test@localhost';
-- 유저생성
create user 'test@localhost' identified by 'testpw';
-- 권한부여
grant select on board.author to 'test@localhost';
grant insert on board.author to 'test@localhost';
-- 권한지우기
revoke select on board.author from 'test@localhost';
-- 권한 변경사항 적용
FLUSH PRIVILEGES;

-- 권한보기
show grants for 'test@localhost';