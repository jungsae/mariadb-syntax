-- view ���̺� ����
create view author_for_view as
select name,email
from author;

select * from author_for_view;