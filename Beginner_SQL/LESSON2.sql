-- Make sure we are using a right database

use [AdventureWorks2016]

--
SELECT * FROM [HumanResources].[Department]

-- SHOW ME ALL THE DEPARMENT NAMES.
SELECT NAME FROM [HumanResources].[Department]

-- SHOW ME ALL THE GROUPNAME
SELECT GROUPNAME FROM [HumanResources].[Department]

-- SHOW ALL THE DISTINCT GROUPNAME
SELECT DISTINCT GROUPNAME FROM [HumanResources].[Department]

-- [FILTERING] SHOW ALL THE DEPARMENT NAME WHO ARE A PART OF MANUFATURING
SELECT NAME, GROUPNAME FROM [HumanResources].[Department]
WHERE GROUPNAME LIKE 'MANUFACTURING'

-- GIVE ME ALL THE EMPLOYEES FROM THE EMPLOYEE TABLE
SELECT * FROM [HumanResources].[Employee]

-- GIVE ME A LIST OF ALL EMPLOYEE WHO HAVE ORGLEVEL = 2
SELECT * FROM [HumanResources].[Employee] 
WHERE OrganizationLevel = 2


-- GIVE ME A LIST OF ALL EMPLOYEE WHO HAVE ORGLEVEL = 2 OR 3
SELECT * FROM [HumanResources].[Employee] 
WHERE OrganizationLevel IN (2,3)

-- GIVE ME A LIST OF ALL EMPLOYEE WHO HAVE ORGLEVEL = 2 OR 3
SELECT * FROM [HumanResources].[Employee] 
WHERE OrganizationLevel = 2 OR OrganizationLevel = 3

-- GIVE ME A LIST OF ALL EMPLOYEE WHOSE ORGLEVEL IS NOT 2
SELECT * FROM [HumanResources].[Employee] 
WHERE NOT OrganizationLevel = 2

-- [EXACT MATCH] GIVE ME A LIST OF A EMPLOYEES WHO HAVE A TITLE AS FACILITIES MANANGER
SELECT * FROM [HumanResources].[Employee] 
WHERE JobTitle LIKE 'Facilities Manager'

-- GIVE ME ALL THE EMPLOYEES WHO HAVE THE WORD MANAGE IN THEIR TITLE
SELECT * FROM [HumanResources].[Employee] 
WHERE JobTitle LIKE '%Manager'

-- GIVE ME ALL THE EMPLOYEES WHO HAVE THE WORD CONTROL IN THE MIDDLE
SELECT * FROM [HumanResources].[Employee] 
WHERE JobTitle LIKE '%CONTROL%'


-- GIVE ME ALL EMPLOYEE WHO ARE BORN AFTER JAN/1/1980
SELECT * FROM [HumanResources].[Employee] WHERE BirthDate > '1/1/1980'

SELECT * FROM [HumanResources].[Employee] 
WHERE BirthDate BETWEEN '1/1/1970' AND '1/1/1980'

SELECT * FROM [HumanResources].[Employee] 
WHERE BirthDate > '1/1/1970' AND BirthDate < '1/1/1980'

