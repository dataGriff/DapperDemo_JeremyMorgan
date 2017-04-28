WITH CTE AS
(
	SELECT CustomerFirstName = 'Lloyd'
,CustomerLastName = 'Christmas'
,IsActive = 1
UNION ALL
	SELECT CustomerFirstName = 'Harry'
,CustomerLastName = 'Dunne'
,IsActive = 1
UNION ALL
	SELECT CustomerFirstName = 'Mary'
,CustomerLastName = 'Swanson'
,IsActive = 1
UNION ALL
	SELECT CustomerFirstName = 'Sea'
,CustomerLastName = 'Bass'
,IsActive = 1
)

INSERT INTO Customer
(
CustomerFirstName
,CustomerLastName
,IsActive
)

SELECT 
CustomerFirstName
,CustomerLastName
,IsActive
FROM CTE c
WHERE NOT EXISTS(
SELECT 1
FROM Customer co
WHERE co.CustomerFirstName = c.CustomerFirstName
AND co.CustomerLastName = c.CustomerLastName
)

