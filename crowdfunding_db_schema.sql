CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,                 
    first_name VARCHAR(15) NOT NULL,           
    last_name VARCHAR(15) NOT NULL,            
    email VARCHAR(100) NOT NULL UNIQUE         
);
select * from contacts ;


CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,       
    category VARCHAR(50) NOT NULL             
);
select * from category ;

CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,   
    subcategory VARCHAR(50) NOT NULL          
);
select * from subcategory ;

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,                     
    contact_id INT NOT NULL REFERENCES contacts(contact_id),  
    company_name VARCHAR(255),                
    description VARCHAR(255),                 
    goal FLOAT NOT NULL,                      
    pledged FLOAT NOT NULL,                     
    outcome VARCHAR(15) NOT NULL,            
    backers_count INT NOT NULL,               
    country VARCHAR(5) NOT NULL,              
    currency VARCHAR(3) NOT NULL,             
    launch_date DATE NOT NULL,                
    end_date DATE NOT NULL,                   
    category_id VARCHAR(10) REFERENCES category(category_id),  
    subcategory_id VARCHAR(50) REFERENCES subcategory(subcategory_id) 
);
select * from campaign ;