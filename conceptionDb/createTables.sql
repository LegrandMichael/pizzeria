#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

#------------------------------------------------------------
# Table: Users
#------------------------------------------------------------

CREATE TABLE Users(
        id          int (11) Auto_increment  NOT NULL ,
        firstName   Varchar (255) NOT NULL ,
        lastName    Varchar (255) NOT NULL ,
        mail        Varchar (255) NOT NULL ,
        nickname    Varchar (255) NOT NULL ,
        gender      Varchar (5) NOT NULL ,
        birthdate   Varchar (10) NOT NULL ,
        phoneNumber Varchar (9) NOT NULL ,
        address     Varchar (255) NOT NULL ,
        PRIMARY KEY (id ) ,
        UNIQUE (nickname )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Orders
#------------------------------------------------------------

CREATE TABLE Orders(
        id          int (11) Auto_increment  NOT NULL ,
        id_Users    Int NOT NULL ,
        id_Products Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Products
#------------------------------------------------------------

CREATE TABLE Products(
        id          int (11) Auto_increment  NOT NULL ,
        name        Varchar (30) ,
        price       Float ,
        id_Receipts Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Receipts
#------------------------------------------------------------

CREATE TABLE Receipts(
        id          int (11) Auto_increment  NOT NULL ,
        title       Varchar (25) NOT NULL ,
        id_Stock    Int ,
        id_Products Int ,
        PRIMARY KEY (id ) ,
        UNIQUE (title )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Stock
#------------------------------------------------------------

CREATE TABLE Stock(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (50) NOT NULL ,
        quantity Float ,
        id_Unit  Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Unit
#------------------------------------------------------------

CREATE TABLE Unit(
        id   int (11) Auto_increment  NOT NULL ,
        name Varchar (25) NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;

ALTER TABLE Orders ADD CONSTRAINT FK_Orders_id_Users FOREIGN KEY (id_Users) REFERENCES Users(id);
ALTER TABLE Orders ADD CONSTRAINT FK_Orders_id_Products FOREIGN KEY (id_Products) REFERENCES Products(id);
ALTER TABLE Products ADD CONSTRAINT FK_Products_id_Receipts FOREIGN KEY (id_Receipts) REFERENCES Receipts(id);
ALTER TABLE Receipts ADD CONSTRAINT FK_Receipts_id_Stock FOREIGN KEY (id_Stock) REFERENCES Stock(id);
ALTER TABLE Receipts ADD CONSTRAINT FK_Receipts_id_Products FOREIGN KEY (id_Products) REFERENCES Products(id);
ALTER TABLE Stock ADD CONSTRAINT FK_Stock_id_Unit FOREIGN KEY (id_Unit) REFERENCES Unit(id);
