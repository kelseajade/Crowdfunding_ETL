DROP TABLE IF EXISTS category;

CREATE TABLE category (
    category_id VARCHAR NOT NULL PRIMARY KEY,
    category VARCHAR NOT NULL
);

DROP TABLE IF EXISTS subcategory;

CREATE TABLE subcategory (
    subcategory_id VARCHAR NOT NULL PRIMARY KEY,
    subcategory VARCHAR NOT NULL
);

DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts (
    contact_id INTEGER NOT NULL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);

DROP TABLE IF EXISTS campaign;

CREATE TABLE campaign (
    cf_id INTEGER NOT NULL PRIMARY KEY,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    staff_pick BOOLEAN NOT NULL,
    spotlight BOOLEAN NOT NULL,
	category_subcategory VARCHAR NOT NULL,
    category VARCHAR NOT NULL,
    subcategory VARCHAR NOT NULL,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;



