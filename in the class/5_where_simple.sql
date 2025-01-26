-- all orders above 100
SELECT * 
FROM orders
WHERE customer_id between 1 and 3;

-- all customers start with A
-- select * from customers
-- where name like '%Mormo'; -- wildcards

--            1234567
-- select length('123abcdd') - (INSTR('123abcdd', 'abc') + length('abc')) + 1

