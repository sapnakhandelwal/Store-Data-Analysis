# Store-Data-Analysis
Analyzing the Store data in MySQL

Dataset : I have create-db-store-copy file

Finding -
1. Initial file was having 6 Tables - (EER diagram, Schema)
2. File is showing some error during run time

Analysis -
1. Identified the error in the file
2. After rectifiying the erroe, new file is containing 7 Tables
3. I wrote different queries across all the tables
4. I practice Join syntax in MySQL
5. I practice how to find and calculate null values in MySQL
   
-- The initial create-db-store file was giving error while running. Although we were able to get the EER diagram with 6 tables
-- When we debug the code we found there was error in last table. The last table was not completed and syntax was incorrect at Create Table
-- So we have corrected the syntax (line- 130). Add 2 Foreign Keys as mentioned above (line-136-140)
-- So now new EER diagram has 7 tables
-- We have also added primary key Item_Id (line- 105) in one table named Order_Items. As 2 Primary Keys were mentioned which were already a Primary Keys in other tables
-- So we changed those Keys to Foreign keys (line- 108). Wrote the respective Syntax

This image shows the wrong part of the code

![image](https://github.com/sapnakhandelwal/Store-Data-Analysis/assets/147053399/06c4480c-6ceb-41f7-9ba1-0f353c5a555d)

This image shows the correct code

![image](https://github.com/sapnakhandelwal/Store-Data-Analysis/assets/147053399/4cef0ebc-076c-41f8-8243-fd8007c052e3)

This image shows the original EER diagram with 6 tables

![image](https://github.com/sapnakhandelwal/Store-Data-Analysis/assets/147053399/9928e67b-7f59-498d-9406-9217f870c8df)

This image shows the rectified EER diagram with 7 tables

![image](https://github.com/sapnakhandelwal/Store-Data-Analysis/assets/147053399/395a3339-4b49-498a-89b1-13fb28ff88f9)


