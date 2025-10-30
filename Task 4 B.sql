USE library;

ALTER TABLE Members
ADD COLUMN last_login DATETIME NULL AFTER `status`; 

ALTER TABLE Books
ADD COLUMN rating TINYINT CHECK (rating BETWEEN 1 AND 5) NULL AFTER `book Condition`;