-- IF
CREATE PROCEDURE post_price_check(IN a_id INT)
BEGIN
    DECLARE avg_price DECIMAL default 0;
    SELECT avg(price) into avg_price from where author_id=a_id;
    IF avg_price >= 10000 THEN
        select "고액 원고료 작가입니다" as message;
    ELSE
        select "고액 원고료 작가가 아닙니다." as message;
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