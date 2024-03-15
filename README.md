# Crowdfunding_ETL

### Miranda M. 
I created the Crowdfunding DataFrame by extracting the data from the 'crowdfunding.xlsx' Excel file into a pandas DataFrame. In this newly created DataFrame, I had to:
- spilt the 'category & subcategory' column into two, independent columns 'category' and 'subcategory'

Once those two new columns were created, my next step was to create new DataFrames for the 'category' and 'subcategory' data. To complete this step, I had to:
- Separate the two sets of data
- Create DataFrames for each set of data

At the end, I exported the data into the following CSV files: 
- category.csv
- subcategory.csv 

### Kelsea T. 
I created the Campaign DataFrame by extracting data from the 'crowdfunding.xlsx' Excel file into a pandas DataFrame. I renamed the 'blurb' column to 'description', converted 'goal' and 'pledged' columns to float data type, and converted 'launched_at' and 'deadline' columns to datetime format while renaming them to 'launch_date' and 'end_date'. Additionally, mI merged the 'category_id' and 'subcategory_id' columns on identification numbers. Then, I assembled all the transformed data into a new DataFrame with the specified columns. Finally, campaign DataFrame was exported as 'campaign.csv'. The CSV file can be found under resources.

For the Contacts DataFrame, I imported 'contacts.xlsx' Excel file. I created a loop to iterate through the data, converting each row to a dictionary. I extracted values from the keys using list comprehensions and created a new DataFrame.This was done with help from the professor asd well as a previous class example. The 'name' column was split into first and last names, placed in separate columns, and then deleted the name column within the DataFrame. Finally I exported the cleaned contacts DataFrame as 'contacts.csv' and saved it in the Resources folder.

### Miranda M. and Kelsea T.
We began by sketching an Entity-Relationship Diagram (ERD) using QuickDBD, based on the inspection of four CSV files containing crowdfunding data. The ERD guided the creation of table schemas in PostgreSQL, defining data types, primary keys, foreign keys, and constraints. A Postgres SQL file named crowdfunding_db_schema.sql was generated to for these schemas. Subsequently, a new PostgreSQL database named crowdfunding_db was created, and the tables were established in the correct order to handle foreign keys. Verification of table creation was performed by using SELECT statements for each table. CSV files were then imported into their corresponding SQL tables. Finally, the correctness of the data was confirmed by querying each table, ensuring successful importation and accurate representation of the crowdfunding data within the database.
