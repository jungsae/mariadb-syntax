-- IF
CREATE PROCEDURE post_price_check(IN a_id INT)
BEGIN
    DECLARE avg_price DECIMAL default 0;
    SELECT avg(price) into avg_price from where author_id=a_id;
    IF avg_price >= 10000 THEN
        select "��� ����� �۰��Դϴ�" as message;
    ELSE
        select "��� ����� �۰��� �ƴմϴ�." as message;
    END IF;
END //
DELIMITER ;

CALL post_price_check(1);

-- while
DELIMITER //
CREATE PROCEDURE whilePrac()
BEGIN
    DECLARE count INT;
    SET count = 1;

    while count <= 100 DO
    SET a=concat('hello wolrd', count);
    SET count=count+1;;
    end while;

    select a;
END //
DELIMITER ;

CALL whilePrac();