#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: User
#------------------------------------------------------------

CREATE TABLE User(
        id          int (11) Auto_increment  NOT NULL ,
        firstName   Varchar (255) NOT NULL ,
        lastName    Varchar (255) NOT NULL ,
        mail        Varchar (255) NOT NULL ,
        nickname    Varchar (255) NOT NULL ,
        gender      Varchar (5) NOT NULL ,
        birthdate   Varchar (10) NOT NULL ,
        phoneNumber Varchar (9) NOT NULL ,
        address     Varchar (255) NOT NULL ,
        zipCode     Int NOT NULL ,
        city        Varchar (255) NOT NULL ,
        PRIMARY KEY (id ) ,
        UNIQUE (nickname )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Purchase
#------------------------------------------------------------

CREATE TABLE Purchase(
        id         int (11) Auto_increment  NOT NULL ,
        quantity   Int NOT NULL ,
        id_User    Int NOT NULL ,
        id_Product Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Product
#------------------------------------------------------------

CREATE TABLE Product(
        id        int (11) Auto_increment  NOT NULL ,
        name      Varchar (30) ,
        price     Float ,
        id_Recipe Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Recipe
#------------------------------------------------------------

CREATE TABLE Recipe(
        id         int (11) Auto_increment  NOT NULL ,
        title      Varchar (25) NOT NULL ,
        id_Stock   Int ,
        id_Product Int ,
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

ALTER TABLE Purchase ADD CONSTRAINT FK_Purchase_id_User FOREIGN KEY (id_User) REFERENCES User(id);
ALTER TABLE Purchase ADD CONSTRAINT FK_Purchase_id_Product FOREIGN KEY (id_Product) REFERENCES Product(id);
ALTER TABLE Product ADD CONSTRAINT FK_Product_id_Recipe FOREIGN KEY (id_Recipe) REFERENCES Recipe(id);
ALTER TABLE Recipe ADD CONSTRAINT FK_Recipe_id_Stock FOREIGN KEY (id_Stock) REFERENCES Stock(id);
ALTER TABLE Recipe ADD CONSTRAINT FK_Recipe_id_Product FOREIGN KEY (id_Product) REFERENCES Product(id);
ALTER TABLE Stock ADD CONSTRAINT FK_Stock_id_Unit FOREIGN KEY (id_Unit) REFERENCES Unit(id);
