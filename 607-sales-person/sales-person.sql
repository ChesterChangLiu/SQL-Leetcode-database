# Write your MySQL query statement below
SELECT s.name
FROM SalesPerson s
WHERE s.sales_id NOT IN (
    SELECT DISTINCT o.sales_id
    FROM Orders o
    JOIN Company c ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);
#First identify which salespeople DID have orders with RED company
#Then exclude those salespeople from the full list of salespeople
#Return the remaining salespeople who never had orders with RED company