USE library;

INSERT INTO Branch (`Branch ID`, `Opening Date`, `Branch Name`, `Address`, `Phone Number`, `Manager Name`)
VALUES (1, '2025-01-15', 'Central Library', '123 Main St, City', 1234567890, 'John Doe'),
(2, '2025-02-10', 'West Side Branch', '456 West St, City', 9876543210, 'Jane Smith'),
(3, '2025-03-05', 'East End Branch', '789 East Rd, City', 5551234567, 'Ali Hassan'),
(4, '2025-04-20', 'North Branch', '321 North Ave, City', 4449876543, 'Sara Ahmed'),
(5, '2025-05-15', 'South Branch', '654 South St, City', 6667778888, 'Mohammed Khalid');

INSERT INTO Members(`Borrow ID`, `Name`, `Email`, `Phone`, `Membership Type`, `Join Date`, `Expiry Date`, `status`, `last_login`) 
VALUES(1, 'Ahmed Ali', 'ahmed.ali@example.com', '901234567', 'Standard', '2025-01-05', '2026-01-04', 'Active', '2025-10-29 10:00:00'),
(2, 'Mona Hassan', 'mona.hassan@example.com', '902345678', 'Premium', '2025-02-10', '2026-02-09', 'Active', '2025-10-28 09:30:00'),
(3, 'Omar Salah', 'omar.salah@example.com', '903456789', 'Standard', '2025-03-12', '2026-03-11', 'Inactive', '2025-09-15 14:45:00'),
(4, 'Sara Adel', 'sara.adel@example.com', '904567890', 'Premium', '2025-04-18', '2026-04-17', 'Active', '2025-10-27 12:20:00'),
(5, 'Khalid Nasser', 'khalid.nasser@example.com', '905678901', 'Standard', '2025-05-22', '2026-05-21', 'Active', '2025-10-26 11:10:00'),
(6, 'Laila Omar', 'laila.omar@example.com', '906789012', 'Premium', '2025-06-05', '2026-06-04', 'Inactive', '2025-08-20 16:00:00'),
(7, 'Youssef Ahmed', 'youssef.ahmed@example.com', '907890123', 'Standard', '2025-07-15', '2026-07-14', 'Active', '2025-10-25 10:15:00'),
(8, 'Fatma Khaled', 'fatma.khaled@example.com', '908901234', 'Premium', '2025-08-01', '2026-07-31', 'Active', '2025-10-24 13:45:00'),
(9, 'Hassan Ali', 'hassan.ali@example.com', '909012345', 'Standard', '2025-09-12', '2026-09-11', 'Inactive', '2025-09-30 09:50:00'),
(10, 'Nada Samir', 'nada.samir@example.com', '910123456', 'Premium', '2025-10-05', '2026-10-04', 'Active', '2025-10-30 08:30:00'),
(11, 'Amr Tamer', 'amr.tamer@example.com', '911234567', 'Standard', '2025-01-18', '2026-01-17', 'Active', '2025-10-29 14:10:00'),
(12, 'Dina Fathy', 'dina.fathy@example.com', '912345678', 'Premium', '2025-02-22', '2026-02-21', 'Active', '2025-10-28 15:00:00'),
(13, 'Mahmoud Hany', 'mahmoud.hany@example.com', '913456789', 'Standard', '2025-03-30', '2026-03-29', 'Inactive', '2025-09-25 12:00:00'),
(14, 'Reem Tarek', 'reem.tarek@example.com', '914567890', 'Premium', '2025-04-12', '2026-04-11', 'Active', '2025-10-27 09:30:00'),
(15, 'Samer Farid', 'samer.farid@example.com', '915678901', 'Standard', '2025-05-05', '2026-05-04', 'Active', '2025-10-26 10:50:00'),
(16, 'Mariam Mostafa', 'mariam.mostafa@example.com', '916789012', 'Premium', '2025-06-18', '2026-06-17', 'Inactive', '2025-08-15 16:30:00'),
(17, 'Othman Salah', 'othman.salah@example.com', '917890123', 'Standard', '2025-07-20', '2026-07-19', 'Active', '2025-10-25 14:40:00'),
(18, 'Lamia Youssef', 'lamia.youssef@example.com', '918901234', 'Premium', '2025-08-25', '2026-08-24', 'Active', '2025-10-24 11:20:00'),
(19, 'Hussein Adel', 'hussein.adel@example.com', '919012345', 'Standard', '2025-09-10', '2026-09-09', 'Inactive', '2025-09-28 10:05:00'),
(20, 'Salma Khaled', 'salma.khaled@example.com', '920123456', 'Premium', '2025-10-15', '2026-10-14', 'Active', '2025-10-30 09:00:00'),
(21, 'Tamer Fathy', 'tamer.fathy@example.com', '921234567', 'Standard', '2025-01-25', '2026-01-24', 'Active', '2025-10-29 12:00:00'),
(22, 'Nour Hany', 'nour.hany@example.com', '922345678', 'Premium', '2025-02-05', '2026-02-04', 'Active', '2025-10-28 14:30:00'),
(23, 'Adel Samir', 'adel.samir@example.com', '923456789', 'Standard', '2025-03-08', '2026-03-07', 'Inactive', '2025-09-20 16:15:00'),
(24, 'Rania Tamer', 'rania.tamer@example.com', '924567890', 'Premium', '2025-04-18', '2026-04-17', 'Active', '2025-10-27 10:25:00'),
(25, 'Fady Farid', 'fady.farid@example.com', '925678901', 'Standard', '2025-05-22', '2026-05-21', 'Active', '2025-10-26 11:55:00'),
(26, 'Noha Mostafa', 'noha.mostafa@example.com', '926789012', 'Premium', '2025-06-12', '2026-06-11', 'Inactive', '2025-08-10 09:40:00'),
(27, 'Ibrahim Salah', 'ibrahim.salah@example.com', '927890123', 'Standard', '2025-07-15', '2026-07-14', 'Active', '2025-10-25 12:30:00'),
(28, 'Heba Youssef', 'heba.youssef@example.com', '928901234', 'Premium', '2025-08-05', '2026-08-04', 'Active', '2025-10-24 10:50:00'),
(29, 'Karim Adel', 'karim.adel@example.com', '929012345', 'Standard', '2025-09-01', '2026-08-31', 'Inactive', '2025-09-15 14:20:00'),
(30, 'Mona Khalid', 'mona.khalid@example.com', '930123456', 'Premium', '2025-10-10', '2026-10-09', 'Active', '2025-10-30 08:45:00');

INSERT INTO author (`Author ID`, `Name`, `Biography`, `Nationality`, `Birth Year`)
VALUES
(1, 'J.K. Rowling', 'Author of the Harry Potter series', 'British', 1965),
(2, 'George R.R. Martin', 'Author of A Song of Ice and Fire', 'American', 1948),
(3, 'Agatha Christie', 'Famous mystery novelist', 'British', 1890),
(4, 'Stephen King', 'Horror and suspense novelist', 'American', 1947),
(5, 'Isabel Allende', 'Chilean writer of magical realism', 'Chilean', 1942),
(6, 'Haruki Murakami', 'Japanese contemporary novelist', 'Japanese', 1949),
(7, 'Leo Tolstoy', 'Russian novelist, author of War and Peace', 'Russian', 1828),
(8, 'Chinua Achebe', 'Nigerian novelist, author of Things Fall Apart', 'Nigerian', 1930),
(9, 'Paulo Coelho', 'Brazilian author of The Alchemist', 'Brazilian', 1947),
(10, 'Jane Austen', 'English novelist known for romantic fiction', 'British', 1775);

INSERT INTO publisher(`Publisher ID`, `Name`, `Country`, `Contact Email`, `Established Year`)
VALUES(1, 'Penguin Random House', 'USA', 'contact@penguinrandomhouse.com', 1927),
(2, 'HarperCollins', 'USA', 'info@harpercollins.com', 1989),
(3, 'Macmillan Publishers', 'UK', 'support@macmillan.com', 1843),
(4, 'Hachette Livre', 'France', 'contact@hachette.com', 1826),
(5, 'Simon & Schuster', 'USA', 'info@simonandschuster.com', 1924),
(6, 'Scholastic', 'USA', 'contact@scholastic.com', 1920),
(7, 'Oxford University Press', 'UK', 'info@oup.com', 1586),
(8, 'Bloomsbury Publishing', 'UK', 'contact@bloomsbury.com', 1986),
(9, 'Pearson', 'UK', 'info@pearson.com', 1844),
(10, 'Cengage', 'USA', 'support@cengage.com', 2007);

INSERT INTO categories(`Category ID`, `Category Name`, `Category Description`)
VALUES(1, 'Fiction', 'Narrative literary works created from imagination'),
(2, 'Non-Fiction', 'Informative or factual literary works'),
(3, 'Science Fiction', 'Fiction based on futuristic or scientific concepts'),
(4, 'Fantasy', 'Fiction with magical or supernatural elements'),
(5, 'Mystery', 'Fiction dealing with the solution of a crime or puzzle'),
(6, 'Biography', 'Accounts of a person’s life written by someone else'),
(7, 'History', 'Books covering historical events or periods'),
(8, 'Self-Help', 'Guides or advice on personal improvement');

INSERT INTO Books
(`Book ID`, `ISBN`, `Title`, `Edition`, `Publication Year`, `Total copies`, `Available Copies`, `Shelf Location`, `book Condition`, `Publisher_Publisher ID`)
VALUES
(1, '978-0451524935', '1984', '1st', '1949-06-08', 50, 45, 'A1', 'New', 1),
(2, '978-0061120084', 'To Kill a Mockingbird', '2nd', '1960-07-11', 40, 38, 'A2', 'Good', 2),
(3, '978-0544003415', 'The Hobbit', '3rd', '1937-09-21', 30, 25, 'B1', 'New', 3),
(4, '978-0439139601', 'Harry Potter and the Goblet of Fire', '1st', '2000-07-08', 60, 55, 'B2', 'New', 8),
(5, '978-0553293357', 'Dune', '2nd', '1965-08-01', 35, 30, 'C1', 'Good', 4),
(6, '978-0141439600', 'Pride and Prejudice', '1st', '1813-01-28', 45, 40, 'C2', 'Good', 7),
(7, '978-0307346605', 'The Da Vinci Code', '1st', '2003-03-18', 50, 45, 'D1', 'New', 5),
(8, '978-0062315007', 'Sapiens', '1st', '2011-01-01', 40, 35, 'D2', 'New', 9),
(9, '978-1451673319', 'Fahrenheit 451', '1st', '1953-10-19', 30, 28, 'E1', 'Good', 6),
(10, '978-0307277671', 'Guns, Germs, and Steel', '1st', '1997-03-01', 25, 20, 'E2', 'Good', 9),
(11, '978-0140177398', 'Of Mice and Men', '1st', '1937-02-06', 30, 28, 'F1', 'Good', 2),
(12, '978-0385504201', 'Angels & Demons', '1st', '2000-05-01', 40, 35, 'F2', 'New', 5),
(13, '978-0140449136', 'The Odyssey', '1st', '800-01-01', 20, 18, 'G1', 'Old', 6),
(14, '978-0553212419', 'Dracula', '2nd', '1897-05-26', 25, 22, 'G2', 'Old', 1),
(15, '978-0141439518', 'Jane Eyre', '1st', '1847-10-16', 35, 30, 'H1', 'Good', 7),
(16, '978-0439064873', 'Harry Potter and the Chamber of Secrets', '1st', '1998-07-02', 50, 45, 'H2', 'New', 8),
(17, '978-0060850524', 'Brave New World', '1st', '1932-08-30', 40, 38, 'I1', 'Good', 1),
(18, '978-0452284234', 'The Kite Runner', '1st', '2003-05-29', 35, 33, 'I2', 'New', 2),
(19, '978-0060935467', 'Life of Pi', '1st', '2001-09-11', 30, 28, 'J1', 'Good', 3),
(20, '978-0316769488', 'The Catcher in the Rye', '1st', '1951-07-16', 25, 23, 'J2', 'Good', 4),
(21, '978-0060256654', 'The Alchemist', '1st', '1988-04-15', 40, 38, 'K1', 'Good', 2),
(22, '978-0142437230', 'Moby-Dick', '1st', '1851-10-18', 30, 28, 'K2', 'Old', 6),
(23, '978-0451532084', 'Animal Farm', '1st', '1945-08-17', 35, 32, 'L1', 'Good', 1),
(24, '978-0061122415', 'The Great Gatsby', '1st', '1925-04-10', 30, 28, 'L2', 'Old', 2),
(25, '978-0439358071', 'Harry Potter and the Order of the Phoenix', '1st', '2003-06-21', 45, 42, 'M1', 'New', 8),
(26, '978-0062316110', 'Homo Deus', '1st', '2015-01-01', 40, 35, 'M2', 'New', 9),
(27, '978-0345391803', 'The Hitchhiker''s Guide to the Galaxy', '1st', '1979-10-12', 30, 28, 'N1', 'Good', 3),
(28, '978-0140283334', 'The Art of War', '1st', '500-01-01', 25, 20, 'N2', 'Old', 6),
(29, '978-0439136365', 'Harry Potter and the Prisoner of Azkaban', '1st', '1999-07-08', 50, 48, 'O1', 'New', 8),
(30, '978-0062316097', '21 Lessons for the 21st Century', '1st', '2018-01-01', 40, 35, 'O2', 'New', 9);


INSERT INTO Books_has_Categories
(`Books_Book ID`, `Categories_Category ID`)
VALUES
(1,1),(2,1),(3,4),(4,4),(5,3),(6,1),(7,5),(8,2),(9,3),(10,7),
(11,1),(12,5),(13,6),(14,6),(15,1),(16,4),(17,3),(18,1),(19,2),(20,1),
(21,1),(22,6),(23,1),(24,1),(25,4),(26,2),(27,3),(28,6),(29,4),(30,2);


INSERT INTO Books_has_Author
(`Books_Book ID`, `Author_Author ID`)
VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,2),(12,7),(13,3),(14,6),(15,6),(16,4),(17,1),(18,2),(19,8),(20,5),
(21,2),(22,3),(23,1),(24,2),(25,4),(26,8),(27,3),(28,6),(29,4),(30,8);

INSERT INTO Borrowing
(`Borrow ID`, `Branch`, `Borrow Date`, `Due Date`, `Return Date`, `Status`, `Branch_Branch ID`, `Members_Borrow ID`, `Books_Book ID`, `Fines_Fine ID`)
VALUES
(1, 'Central Library', '2025-01-01', '2025-01-15', '2025-01-14', 'Returned', 1, 1, 1, 1),
(2, 'Central Library', '2025-01-02', '2025-01-16', '2025-01-16', 'Returned', 1, 2, 2, 2),
(3, 'East Branch', '2025-01-03', '2025-01-17', NULL, 'Borrowed', 2, 3, 3, 3),
(4, 'West Branch', '2025-01-04', '2025-01-18', NULL, 'Borrowed', 3, 4, 4, 4),
(5, 'Central Library', '2025-01-05', '2025-01-19', '2025-01-19', 'Returned', 1, 5, 5, 5),
(6, 'North Branch', '2025-01-06', '2025-01-20', NULL, 'Borrowed', 4, 6, 6, 6),
(7, 'Central Library', '2025-01-07', '2025-01-21', NULL, 'Borrowed', 1, 7, 7, 7),
(8, 'East Branch', '2025-01-08', '2025-01-22', '2025-01-21', 'Returned', 2, 8, 8, 8),
(9, 'West Branch', '2025-01-09', '2025-01-23', NULL, 'Borrowed', 3, 9, 9, 9),
(10, 'Central Library', '2025-01-10', '2025-01-24', NULL, 'Borrowed', 1, 10, 10, 10),
(11, 'North Branch', '2025-01-11', '2025-01-25', '2025-01-24', 'Returned', 4, 11, 11, 11),
(12, 'Central Library', '2025-01-12', '2025-01-26', NULL, 'Borrowed', 1, 12, 12, 12),
(13, 'East Branch', '2025-01-13', '2025-01-27', NULL, 'Borrowed', 2, 13, 13, 13),
(14, 'West Branch', '2025-01-14', '2025-01-28', '2025-01-27', 'Returned', 3, 14, 14, 14),
(15, 'Central Library', '2025-01-15', '2025-01-29', NULL, 'Borrowed', 1, 15, 15, 15),
(16, 'North Branch', '2025-01-16', '2025-01-30', NULL, 'Borrowed', 4, 16, 16, 16),
(17, 'Central Library', '2025-01-17', '2025-01-31', '2025-01-30', 'Returned', 1, 17, 17, 17),
(18, 'East Branch', '2025-01-18', '2025-02-01', NULL, 'Borrowed', 2, 18, 18, 18),
(19, 'West Branch', '2025-01-19', '2025-02-02', NULL, 'Borrowed', 3, 19, 19, 19),
(20, 'Central Library', '2025-01-20', '2025-02-03', '2025-02-02', 'Returned', 1, 20, 20, 20),
(21, 'North Branch', '2025-01-21', '2025-02-04', NULL, 'Borrowed', 4, 21, 21, 21),
(22, 'Central Library', '2025-01-22', '2025-02-05', NULL, 'Borrowed', 1, 22, 22, 22),
(23, 'East Branch', '2025-01-23', '2025-02-06', '2025-02-05', 'Returned', 2, 23, 23, 23),
(24, 'West Branch', '2025-01-24', '2025-02-07', NULL, 'Borrowed', 3, 24, 24, 24),
(25, 'Central Library', '2025-01-25', '2025-02-08', NULL, 'Borrowed', 1, 25, 25, 25);

INSERT INTO Fines
(`Fine ID`, `Status`, `Fine amount`, `Paid Amount`, `Payment Date`)
VALUES
(1, 'Paid', 5, 5, '2025-01-15'),
(2, 'Unpaid', 10, 0, NULL),
(3, 'Paid', 7, 7, '2025-01-20'),
(4, 'Unpaid', 12, 0, NULL),
(5, 'Paid', 3, 3, '2025-01-18'),
(6, 'Unpaid', 8, 0, NULL),
(7, 'Paid', 6, 6, '2025-01-22'),
(8, 'Unpaid', 15, 0, NULL);

INSERT INTO Reservation
(`Reservation ID`, `Reservation date`, `Expiry Date`, `Status`, `Books_Book ID`, `Members_Borrow ID`)
VALUES
(1, '2025-10-01', '2025-10-08', 'Active', 1, 1),
(2, '2025-10-02', '2025-10-09', 'Active', 3, 5),
(3, '2025-10-03', '2025-10-10', 'Cancelled', 7, 8),
(4, '2025-10-04', '2025-10-11', 'Active', 12, 10),
(5, '2025-10-05', '2025-10-12', 'Active', 20, 15);
