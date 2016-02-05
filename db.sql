CREATE TABLE Category
(
	category_name VARCHAR (255) NOT NULL,
	PRIMARY KEY (category_name)
) ENGINE=INNODB;

CREATE TABLE Subcategory
(
	subcategory_name VARCHAR (255) NOT NULL,
	category_name VARCHAR (255) NOT NULL,
	PRIMARY KEY (subcategory_name),
	FOREIGN KEY (category_name)
		REFERENCES Category (category_name)
) ENGINE=INNODB;

CREATE TABLE Business_Type
(
	type_id INT NOT NULL AUTO_INCREMENT,
	type_name VARCHAR (255) NOT NULL,
	PRIMARY KEY (type_id)
) ENGINE=INNODB;

CREATE TABLE Address
(
	address_id INT NOT NULL AUTO_INCREMENT,
	street_number VARCHAR (255),
	street_name VARCHAR (255),
	city VARCHAR (255),
	zip VARCHAR (255),
	geolocation VARCHAR (255),
	PRIMARY KEY (address_id)
) ENGINE=INNODB;

CREATE TABLE Hours
(
	hours_id INT NOT NULL AUTO_INCREMENT,
	hours_entry VARCHAR (255),
	PRIMARY KEY (hours_id)
) ENGINE=INNODB;

CREATE TABLE Business
(
	business_id INT NOT NULL AUTO_INCREMENT,
	type_id INT NOT NULL,
	name VARCHAR (255),
	address_id INT,
	phone VARCHAR (255),
	description VARCHAR (255),
	hours_id INT,
	website VARCHAR (255),
	PRIMARY KEY (business_id),
	FOREIGN KEY (type_id)
		REFERENCES Business_Type (type_id),
	FOREIGN KEY (address_id)
		REFERENCES Address (address_id),
	FOREIGN KEY (hours_id)
		REFERENCES Hours (hours_id)
) ENGINE=INNODB;

CREATE TABLE Business_Subcategory
(
	id INT NOT NULL AUTO_INCREMENT,
	business_id INT NOT NULL,
	subcategory_name VARCHAR (255) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (business_id)
		REFERENCES Business (business_id),
	FOREIGN KEY (subcategory_name)
		REFERENCES Subcategory (subcategory_name)
) ENGINE=INNODB;

CREATE TABLE Role
(
	role_id INT NOT NULL AUTO_INCREMENT,
	role_name VARCHAR (255) NOT NULL,
	PRIMARY KEY (role_id)
) ENGINE=INNODB;

CREATE TABLE Admin
(
	admin_id INT NOT NULL AUTO_INCREMENT,
	username VARCHAR (255) NOT NULL,
	password VARCHAR (255) NOT NULL,
	first_name VARCHAR (255),
	last_name VARCHAR (255),
	email VARCHAR (255),
	role_id INT NOT NULL,
	PRIMARY KEY (admin_id),
	FOREIGN KEY (role_id)
		REFERENCES Role (role_id)
) ENGINE=INNODB;
