start transaction;

show tables;
select * from students;

insert into students values (4, 'check-rollback', '2000-07-07','rahul@gmail.com');
insert into students values (5, 'check-2', '2000-07-07','rahul@gmail.com');

SELECT @@autocommit;
SET autocommit = 0;

COMMIT; -- commit will make the changes permanent 

ROLLBACK;

-- savepoint
select * from students;
-- savepoint

-- Step 1: Insert Amit
INSERT INTO students VALUES (1, 'Amit', '2000-01-01', 'amit@example.com');

-- Step 2: Set SAVEPOINT after successful insert
SAVEPOINT after_amit;

-- Step 3: Insert Vijay
INSERT INTO students VALUES (2, 'Vijay', '2000-02-02', 'vijay@example.com');

-- Step 4:  rollback only Vijay
ROLLBACK TO after_amit;

-- Step 5: Commit remaining (Amit)
COMMIT;
