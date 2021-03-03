-- CALCULATE COLUMNS
USE [AdventureWorks2016]

SELECT NAME, LISTPRICE FROM [Production].[Product]

SELECT NAME, LISTPRICE, LISTPRICE + 10 AS ADJ_LISTPRICE 
FROM [Production].[Product]

-- INTO

SELECT NAME, LISTPRICE, LISTPRICE + 10 AS ADJ_LISTPRICE 
INTO [Production].[Product_2] FROM [Production].[Product]

SELECT * FROM [Production].[Product_2]

-- THIS BECOMES HANDY WHEN WE WANT TO BREAK DOWN THE VERY COMPLICATED PROCESS

-- TEMPORARY WHILE ACTICE SEESION OF INSDIE OF THE WINDOW 
SELECT NAME, LISTPRICE, LISTPRICE + 10 AS ADJ_LISTPRICE 
INTO #TEMPNAME FROM [Production].[Product]

SELECT * FROM #TEMPNAME

-- DELETE DATA FROM TABLE
DELETE FROM [Production].[Product_2]
WHERE NAME LIKE 'BEARING BALL'

-- UPDATE 

UPDATE [Production].[Product_2]
SET NAME = 'BLADE_NEW'
WHERE NAME LIKE 'BLADE'

-- CHECK
SELECT * FROM [Production].[Product_2]