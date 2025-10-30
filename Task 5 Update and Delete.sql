UPDATE Members
SET `Membership Type` = 'Premium'
WHERE `Name` = 'Ahmed Ali' 
Limit 1;

UPDATE Borrowing
SET `Return Date` = CURDATE(),  
`Status` = 'Returned'
WHERE `Borrow ID` = 4 ; 

UPDATE Books b
JOIN Borrowing br ON b.`Book ID` = br.`Books_Book ID`
SET b.`Available Copies` = b.`Available Copies` + 1
WHERE br.`Borrow ID` = 4;

UPDATE Fines
SET `Status` = 'Paid',`Payment Date` = CURDATE()  
WHERE `Fine ID` = 3;  

DELETE FROM reservation WHERE `Expiry Date` < curdate() limit 3;

DELETE FROM Members WHERE `Borrow ID` = 1; 
#Error Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`library`.`borrowing`, CONSTRAINT `fk_Borrowing_Members1` FOREIGN KEY (`Members_Borrow ID`) REFERENCES `members` (`Borrow ID`))
