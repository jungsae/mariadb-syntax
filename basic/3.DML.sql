-- INSERT
 INSERT INTO author(id, name, email) VALUES (1, 'KIM', 'abc@naver.com');

-- UPDATE
���̺� ���ڵ��� ������ ����
UPDATE ���̺� �̸� 
    SET �ʵ��̸�1=�����Ͱ�1, �ʵ��̸�2=�����Ͱ�2, ...
    WHERE �ʵ��̸�=�����Ͱ�
WHERE ���� �����ϸ� �ش� ���̺��� ��� ���ڵ尪�� �� ������� ����
UPDATE FROM author WHERE author_id=5;

-- DELETE
DELETE somewhere from author WHERE.....

-- SELECT
SELECT �ʵ��̸� FROM ���̺��̸� [WHERE����]

-- ��� �ʵ� ����
SELECT * FROM member;

e.g.
    select * from author where id=1;
    select name, email from author where id=1;
    select * from author where id > 1;
    select * from author id > AND name='kim'; 

-- �̸� �ߺ������ϰ� ��ȸ
SELECT distinct name from author;

-- order by
select * from author order by name desc;

-- ��ȯ�� ���� �ִ� ����
select * from author LIMIT number 

-- order by ��Ƽ
select * from author order by name, email;

-- order by 
select * from author