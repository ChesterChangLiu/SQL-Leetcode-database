# Write your MySQL query statement below
Select Person.firstName, Person.lastName, Address.city, Address.state from Person left join Address on Person.personID = Address.personId
