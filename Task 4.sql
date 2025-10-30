USE library;

CREATE TABLE Members (
  `Borrow ID` INT AUTO_INCREMENT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Membership Type` VARCHAR(45) NULL,
  `Join Date` DATE NULL,
  `Expiry Date` DATE NULL,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`Borrow ID`));




CREATE TABLE Publisher (
  `Publisher ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Contact Email` VARCHAR(45) NULL,
  `Established Year` INT NULL,
  PRIMARY KEY (`Publisher ID`));



CREATE TABLE Books (
  `Book ID` INT NOT NULL,
  `ISBN` VARCHAR(45) NULL,
  `Title` VARCHAR(45) NULL,
  `Edition` VARCHAR(45) NULL,
  `Publication Year` DATE NULL,
  `Total copies` INT NULL,
  `Available Copies` INT NULL,
  `Shelf Location` VARCHAR(45) NULL,
  `book Condition` VARCHAR(45) NULL,
  `Publisher_Publisher ID` INT ,
  PRIMARY KEY (`Book ID`, `Publisher_Publisher ID`),
  INDEX `fk_Books_Publisher1_idx` (`Publisher_Publisher ID` ASC) ,
  CONSTRAINT `fk_Books_Publisher1`
    FOREIGN KEY (`Publisher_Publisher ID`)
    REFERENCES Publisher (`Publisher ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE Categories (
  `Category ID` INT NOT NULL,
  `Category Name` VARCHAR(45) NULL,
  `Category Description` VARCHAR(45) NULL,
  PRIMARY KEY (`Category ID`));




CREATE TABLE Author (
  `Author ID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Biography` VARCHAR(150) NULL,
  `Nationality` VARCHAR(45) NULL,
  `Birth Year` SMALLINT(4) NULL,
  PRIMARY KEY (`Author ID`));




CREATE TABLE Reservation (
  `Reservation ID` INT NOT NULL,
  `Reservation date` DATE NULL,
  `Expiry Date` DATE NULL,
  `Status` VARCHAR(45) NULL,
  `Books_Book ID` INT NOT NULL,
  `Members_Borrow ID` INT NOT NULL,
  PRIMARY KEY (`Reservation ID`, `Books_Book ID`, `Members_Borrow ID`),
  INDEX `fk_Reservation_Books1_idx` (`Books_Book ID` ASC) ,
  INDEX `fk_Reservation_Members1_idx` (`Members_Borrow ID` ASC),
  CONSTRAINT `fk_Reservation_Books1`
    FOREIGN KEY (`Books_Book ID`)
    REFERENCES Books (`Book ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_Members1`
    FOREIGN KEY (`Members_Borrow ID`)
    REFERENCES Members (`Borrow ID`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);



CREATE TABLE Branch (
  `Branch ID` INT NOT NULL,
  `Opening Date` DATE NULL,
  `Branch Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `Phone Number` INT NULL,
  `Manager Name` VARCHAR(45) NULL,
  PRIMARY KEY (`Branch ID`));




CREATE TABLE Fines (
  `Fine ID` INT NOT NULL,
  `Status` VARCHAR(45) NULL,
  `Fine amount` INT NULL,
  `Paid Amount` INT NULL,
  `Payment Date` DATE NULL,
  PRIMARY KEY (`Fine ID`));




CREATE TABLE Borrowing (
  `Borrow ID` INT NOT NULL,
  `Branch` VARCHAR(45) NULL,
  `Borrow Date` DATE NULL,
  `Due Date` DATE NULL,
  `Return Date` DATE NULL,
  `Status` VARCHAR(45) NULL,
  `Branch_Branch ID` INT NOT NULL,
  `Members_Borrow ID` INT NOT NULL,
  `Books_Book ID` INT NOT NULL,
  `Fines_Fine ID` INT NOT NULL,
  PRIMARY KEY (`Borrow ID`, `Branch_Branch ID`, `Members_Borrow ID`, `Books_Book ID`, `Fines_Fine ID`),
  INDEX `fk_Borrowing_Branch1_idx` (`Branch_Branch ID` ASC) ,
  INDEX `fk_Borrowing_Members1_idx` (`Members_Borrow ID` ASC) ,
  INDEX `fk_Borrowing_Books1_idx` (`Books_Book ID` ASC) ,
  INDEX `fk_Borrowing_Fines1_idx` (`Fines_Fine ID` ASC) ,
  CONSTRAINT `fk_Borrowing_Branch1`
    FOREIGN KEY (`Branch_Branch ID`)
    REFERENCES Branch (`Branch ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Borrowing_Members1`
    FOREIGN KEY (`Members_Borrow ID`)
    REFERENCES Members (`Borrow ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Borrowing_Books1`
    FOREIGN KEY (`Books_Book ID`)
    REFERENCES Books (`Book ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Borrowing_Fines1`
    FOREIGN KEY (`Fines_Fine ID`)
    REFERENCES Fines (`Fine ID`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);




CREATE TABLE Books_has_Categories (
  `Books_Book ID` INT NOT NULL,
  `Categories_Category ID` INT NOT NULL,
  PRIMARY KEY (`Books_Book ID`, `Categories_Category ID`),
  INDEX `fk_Books_has_Categories_Categories1_idx` (`Categories_Category ID` ASC) ,
  INDEX `fk_Books_has_Categories_Books_idx` (`Books_Book ID` ASC) ,
  CONSTRAINT `fk_Books_has_Categories_Books`
    FOREIGN KEY (`Books_Book ID`)
    REFERENCES Books (`Book ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Books_has_Categories_Categories1`
    FOREIGN KEY (`Categories_Category ID`)
    REFERENCES Categories (`Category ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



CREATE TABLE Books_has_Author (
  `Books_Book ID` INT NOT NULL,
  `Author_Author ID` INT NOT NULL,
  PRIMARY KEY (`Books_Book ID`, `Author_Author ID`),
  INDEX `fk_Books_has_Author_Author1_idx` (`Author_Author ID` ASC) ,
  INDEX `fk_Books_has_Author_Books1_idx` (`Books_Book ID` ASC),
  CONSTRAINT `fk_Books_has_Author_Books1`
    FOREIGN KEY (`Books_Book ID`)
    REFERENCES Books (`Book ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Books_has_Author_Author1`
    FOREIGN KEY (`Author_Author ID`)
    REFERENCES Author (`Author ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



