CREATE DATABASE Argentina_fuelprices;
USE Argentina_fuelprices;

CREATE TABLE flag_table (
	flag_id INT NOT NULL,
    flag_company VARCHAR(255) NOT NULL,
PRIMARY KEY (flag_id)
);
    
CREATE TABLE seller_table (
	company_id INT NOT NULL,
    company_name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    region VARCHAR (255),
    latitude FLOAT,
    longitude FLOAT,
PRIMARY KEY (company_id)
);

CREATE TABLE shift_table (
	shift_id INT NOT NULL,
    shift_type VARCHAR(255) NOT NULL,
PRIMARY KEY (shift_id)
);

CREATE TABLE product_table (
	product_id INT NOT NULL,
    product_type VARCHAR(255) NOT NULL,
PRIMARY KEY (product_id)
);

CREATE TABLE price_table (
	price_id INT NOT NULL,
    company_id INT NOT NULL,
    legal_id BIGINT NOT NULL,
    company_name VARCHAR(255),
    product_id INT NOT NULL,
    shift_id INT NOT NULL,
    price FLOAT,
    dates DATE,
    years INT,
    flag_id INT NOT NULL,
PRIMARY KEY (price_id),
FOREIGN KEY (company_id) REFERENCES seller_table(company_id),
FOREIGN KEY (product_id) REFERENCES product_table(product_id),
FOREIGN KEY (shift_id) REFERENCES shift_table(shift_id),
FOREIGN KEY (flag_id) REFERENCES flag_table(flag_id)
);
    
 CREATE TABLE seller_tables (
	company_id INT NOT NULL,
    company_name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    region VARCHAR (255),
    latitude FLOAT,
    longitude FLOAT,
PRIMARY KEY (company_id)
);

