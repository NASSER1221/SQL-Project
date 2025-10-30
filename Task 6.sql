SELECT title FROM books WHERE `Publication Year` >= '2020-01-01';

SELECT `Name` FROM members WHERE `Expiry Date` BETWEEN CURDATE() AND ADDDATE(CURDATE(), INTERVAL 30 DAY);

SELECT `Borrow ID` FROM borrowing WHERE `Return Date` is null AND `Due Date`<CURDATE(); 

SELECT `Title` FROM books WHERE `Total copies`=`Available Copies`;

SELECT f.`Fine amount`, m.`Name` FROM fines f JOIN borrowing br ON f.`Fine id`=br.`Fines_Fine ID` 
JOIN members m ON br.`Borrow ID`=m.`Borrow ID` WHERE `Fine amount`> 10;

SELECT c.`Category Name`,b.`Title` FROM categories c JOIN books_has_categories bc ON c.`Category ID`=bc.`Categories_Category ID`
JOIN books b ON bc.`Books_Book ID` = b.`Book ID`WHERE `Category Name`='Fiction';

SELECT `Title` FROM books WHERE `Available Copies`< '2'; 

SELECT `Name` FROM author WHERE `Nationality` IN ('American','British');

SELECT b.`Title`,p.`Name` FROM books b JOIN publisher p ON b.`Publisher_Publisher ID`= p.`Publisher ID` 
WHERE `Name`='Penguin Random House';

SELECT `Borrow ID` FROM borrowing WHERE `Borrow Date` BETWEEN DATE_SUB(CURDATE(), INTERVAL 30 DAY) AND CURDATE();



