#-----------------COUNT-------------------------

SELECT m.`Name`,COUNT(b.`Borrow ID`) AS `Number of Borrows` FROM members m LEFT JOIN borrowing b
ON m.`Borrow ID`=b.`Borrow ID`  GROUP BY m.`Name`;

SELECT COUNT(b.`Book ID`) AS total_books,c.`Category Name`FROM books b
INNER JOIN books_has_categories bhc
ON b.`Book ID` = bhc.`Books_Book ID`INNER JOIN categories c
ON bhc.`Categories_Category ID` = c.`Category ID`
GROUP BY c.`Category Name`;

SELECT bh.`Branch name`,COUNT(b.`Borrow Id`) FROM Borrowing b JOIN
Branch bh ON bh.`Branch ID`=b.`Borrow ID` WHERE
b.`Return Date` IS NULL AND 
b.`Due Date` < CURDATE()
GROUP BY bh.`Branch Name`;

#----------------SUM-----------------------
SELECT SUM(`Fine amount`),DATE_FORMAT(`Payment Date`,'%Y-%M') AS month FROM fines WHERE 
`Payment Date` IS NOT NULL 
GROUP BY month;


SELECT SUM(f.`Fine amount`),m.`Name` FROM fines f JOIN
borrowing b ON f.`Fine ID`= b.`Fines_Fine ID`
JOIN members m ON m.`Borrow ID`=b.`Borrow ID`
GROUP BY m.`Name`;

SELECT SUM(b.`Available Copies`),p.`Name` FROM books b join 
publisher p ON b.`Publisher_Publisher ID`=p.`Publisher ID`
GROUP BY `Name`;

#--------------------AVG----------------

SELECT AVG(DATEDIFF(`Return Date`,`Borrow Date`)) FROM borrowing
WHERE `Return Date` IS NOT NULL; 

SELECT AVG(f.`Fine amount`),m.`Name` FROM fines f JOIN
borrowing b ON f.`Fine ID`= b.`Fines_Fine ID`
JOIN members m ON m.`Borrow ID`=b.`Borrow ID`
GROUP BY m.`Name`;

SELECT br.`Branch Name`,COUNT(b.`Borrow ID`),
AVG(COUNT(b.`Borrow ID`)) OVER() 
FROM Borrowing b
JOIN Branch br ON b.`Branch_Branch ID` = br.`Branch ID`
GROUP BY br.`Branch Name`;

#-----------------MIN/MAX---------------------
SELECT MIN(`Established Year`)AS OLDEST,MAX(`Established Year`) AS NEWEST FROM publisher;

SELECT MIN(borrow_count) AS min_borrowings,MAX(borrow_count) AS max_borrowings
FROM ( SELECT m.`Name`,COUNT(b.`Borrow ID`) AS `borrow_count` FROM members m LEFT JOIN borrowing b
ON m.`Borrow ID`=b.`Borrow ID`  GROUP BY m.`Name`
) AS counts;

SELECT MAX(`Fine amount`) AS MAX_FINE FROM fines;

#-----------------COMPLEX AGGREGATION--------------

SELECT C.`Category Name`,COUNT(BHC.`Books_Book ID`) AS BOOK_COUNT FROM 
categories C JOIN books_has_categories BHC ON 
C.`Category ID`=BHC.`Categories_Category ID`
GROUP BY C.`Category ID` 
HAVING BOOK_COUNT>5;

SELECT m.`Name`,COUNT(b.`Borrow ID`) AS `borrow_count` FROM members m LEFT JOIN borrowing b
ON m.`Borrow ID`=b.`Borrow ID`  
WHERE b.`Borrow Date` BETWEEN DATE_SUB(CURDATE(), INTERVAL 30 DAY) AND CURDATE()
GROUP BY m.`Name`
HAVING `borrow_count`>3 ;

SELECT a.`Author ID`,a.`Name`,COUNT(bha.`Books_Book ID`) AS book_count FROM Author a
JOIN Books_has_Author bha
ON a.`Author ID` = bha.`Author_Author ID`
GROUP BY a.`Author ID`, a.`Name`
HAVING book_count > 2;

SELECT br.`Branch Name`,SUM(f.`Fine amount`) AS total_pending_fines
FROM Borrowing b JOIN Branch br
ON b.`Branch_Branch ID` = br.`Branch ID`
JOIN Fines f ON b.`Fines_Fine ID` = f.`Fine ID`
WHERE f.`Status` = 'Pending'
GROUP BY br.`Branch Name`
HAVING total_pending_fines > 100;

#-----------GROUP BY----------------











