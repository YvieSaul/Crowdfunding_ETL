CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,                 
    first_name VARCHAR(15) NOT NULL,           
    last_name VARCHAR(15) NOT NULL,            
    email VARCHAR(100) NOT NULL UNIQUE         
);
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,       
    category VARCHAR(50) NOT NULL             
);
CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,   
    subcategory VARCHAR(50) NOT NULL          
);
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,                     
    contact_id INT NOT NULL REFERENCES contacts(contact_id),  
    company_name VARCHAR(255),                
    description VARCHAR(255),                 -- Campaign description
    goal FLOAT NOT NULL,                      -- Goal amount for the campaign
    pledged INT NOT NULL,                     -- Amount pledged for the campaign
    outcome VARCHAR(15) NOT NULL,             -- Campaign outcome (e.g., succeeded, failed)
    backers_count INT NOT NULL,               -- Number of backers
    country VARCHAR(5) NOT NULL,              -- Country code (ISO format)
    currency VARCHAR(3) NOT NULL,             -- Currency code (ISO 4217 format)
    launch_date DATE NOT NULL,                -- Campaign launch date
    end_date DATE NOT NULL,                   -- Campaign end date
    category_id VARCHAR(10) REFERENCES category(category_id),  -- Foreign key to category table
    subcategory_id VARCHAR(50) REFERENCES subcategory(subcategory_id) -- Foreign key to subcategory table
);


SELECT 
    contact_id, 
    first_name, 
    last_name, 
    email 
FROM contacts
WHERE contact_id = 1;

SELECT 
    category_id, 
    category 
FROM category
WHERE category_id = 'C1';

SELECT 
    subcategory_id, 
    subcategory 
FROM subcategory
WHERE subcategory_id = 'SC1';

SELECT 
    cf_id, 
    contact_id, 
    company_name, 
    description, 
    goal, 
    pledged, 
    outcome, 
    backers_count, 
    country, 
    currency, 
    launch_date, 
    end_date, 
    category_id, 
    subcategory_id 
FROM campaign
WHERE cf_id = 101;
