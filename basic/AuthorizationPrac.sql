-- ������ȸ
select * from MYSQL.user;
-- ��������
drop user 'test@localhost';
-- ��������
create user 'test@localhost' identified by 'testpw';
-- ���Ѻο�
grant select on board.author to 'test@localhost';
grant insert on board.author to 'test@localhost';
-- ���������
revoke select on board.author from 'test@localhost';
-- ���� ������� ����
FLUSH PRIVILEGES;

-- ���Ѻ���
show grants for 'test@localhost';