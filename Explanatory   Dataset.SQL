--Checking all the columns and the rows in my dataset

SELECT* 
      FROM RETAILS.SALES.SHOPS;


--checking my data on some specific colomn
SELECT customer_id
  FRO M RETAILS.SALES.SHOPS;
       
 
 SELECT  Count (Transaction_Id) AS Number_of_Transactions
   FROM  RETAILS.SALES.SHOPS;

  
SELECT date
   FROM RETAILS.SALES.SHOPS; 
   
--Checking the MIN and MAX Date for the purchased date of some products

SELECT PRODUCT_CATEGORY,
       MIN (DATE)AS Frist_Date_of_Purchase,
       MAX (DATE)AS Latest_Record_of_Purchase_Date,
       
   FROM RETAILS.SALES.SHOPS 
   GROUP BY ALL;

   
--Finding the number of Product category in the dataset
   
SELECT 
     Count(DISTINCT product_category)AS Number_of_Products
  FROM RETAILS.SALES.SHOPS;

  SELECT 
     product_category
  FROM RETAILS.SALES.SHOPS;

  
--Cheking the products categories and their total Amount of Sales.
   
 SELECT 
        PRODUCT_CATEGORY,
        total_amount,
    FROM RETAILS.SALES.SHOPS;    
 
--checking the values in the specific column
SELECT DISTINCT gender
  FROM RETAILS.SALES.SHOPS;

--Checkingn the MIN and Max Prices per product_category

SELECT DISTINCT PRODUCT_CATEGORY,
      MIN (Price_Per_Unit)AS MIN_Price,
      MAX (Price_Per_Unit)AS MAX_Price,

 FROM RETAILS.SALES.SHOPS
 GROUP BY ALL;
