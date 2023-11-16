-- �����ͺ��̽� ����
CREATE DATABASE board;

-- �����ͺ��̽� ����
USE board;

-- ���̺� �ű� ����
CREATE TABLE author(
    id INT, name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    test1 VARCHAR(255),
    PRIMARY KEY (id)
    );

-- ���̺� ��� ��ȸ
SHOW TABLES;

-- ���̺� �÷���ȸ
DESCRIBE author;

-- post ���̺� �ű� ����
CREATE TABLE posts(
    id INT PRIMARY KEY,
    title VARCHAR(255),
    content VARCHAR(255),
    author_id INT,
    FOREIGN KEY(author_id) REFERENCES author(id)
);

-- ���̺� �÷�����ȸ
SHOW FULL COLUMNS FROM author;

-- ���̺� ������ ��ȸ (���̺� ��Ű�� ��ȯ)
SHOW CREATE Table posts;

-- ���̺� �������� ��ȸ
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = "posts";

-- ���̺� index ��ȸ
SHOW INDEX FROM posts;

-- ALTER��
-- ���̺� �̸� ����
ALTER TABLE ���̺�� RENAME ���ο����̺��;
ALTER TABLE posts RENAME post;

-- �÷� �߰�(add)
ALTER TABLE ���̺�� ADD COLUMN �÷��� �ڷ��� [NULL �Ǵ� NOT NULL]
ALTER TABLE author ADD COLUMN role VARCHAR(50);

-- �ʵ� Ÿ�� ����(modify)
ALTER TABLE ���̺�� MODIFY COLUMN �÷��� Ÿ�� [��������]; -- �����(���� �Ӽ��� �״�� �߰�)
ALTER TABLE author MODIFY COLUMN name VARCHAR(100) NOT NULL;

-- �÷� �̸� ���� => content -> contents
ALTER TABLE ���̺�� CHANGE COLUMN �����÷��� ���ο��÷��� Ÿ��[��������]; -- �굵 �����

-- �÷� ���� => test1 �÷�����
ALTER TABLE ���̺�� DROP COLUMN �÷���;

-- Drop
-- ���̺� ����
DROP TABLE ���̺��̸�

-- ���̺��� �����͸��� ����� ���� ��
DELETE FROM ���̺��̸�
TRUNCATE TABLE ���̺��̸�

-- IF EXISTS
-- Ư����ü�� �����ϴ� ��쿡�� ��ɾ� ����
DROP DATABASE �Ǵ� TABLE IF EXISTS Ư����ü