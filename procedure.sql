use world;
select * from city;
DELIMITER //
CREATE PROCEDURE citytableprocedure(IN id int)
BEGIN
    SELECT * FROM city where ID = id;
END //
DELIMITER ;


DROP PROCEDURE IF EXISTS citytableprocedure;

SHOW PROCEDURE STATUS WHERE Db = 'world';

DELIMITER //

CREATE PROCEDURE citytableprocedureid(IN id INT)
BEGIN
    SELECT * FROM city WHERE ID = id;
END //

DELIMITER ;
call citytableprocedureid(50);

delimiter //
create procedure cityIDprocedure(in input_id int)
begin
    select * from city where ID = input_id;
end //
delimiter //

call cityIDprocedure(50);

