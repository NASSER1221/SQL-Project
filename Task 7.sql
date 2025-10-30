SELECT b.`Borrow ID`,m.`Name`,bk.`Title` FROM borrowing b
INNER JOIN members m ON b.`Members_Borrow ID` = m.`Borrow ID`
INNER JOIN books bk ON b.`Books_Book ID` = bk.`Book ID`;

SELECT b.`Title` , a.`Name` FROM books b
INNER JOIN books_has_author bha ON b.`Book ID` = bha.`Books_Book ID`
INNER JOIN author a ON bha.`Author_Author ID` = a.`Author ID`
ORDER BY b.`Title`;

SELECT b.`Borrow ID`,m.`Name` ,bk.`Title` ,brh.`Branch Name`,b.`Borrow Date`,b.`Due Date`
FROM borrowing b
INNER JOIN members m ON b.`Members_Borrow ID` = m.`Borrow ID`
INNER JOIN books bk ON b.`Books_Book ID` = bk.`Book ID`
INNER JOIN branch brh ON b.`Branch_Branch ID` = brh.`Branch ID`;

SELECT m.`Borrow ID` ,m.`Name`,b.`Borrow ID` ,
bk.`Title`,b.`Borrow Date`,b.`Due Date`,b.`Status`
FROM members m
LEFT JOIN borrowing b ON m.`Borrow ID` = b.`Members_Borrow ID`
AND b.`Return Date` IS NULL
LEFT JOIN books bk ON b.`Books_Book ID` = bk.`Book ID`;

