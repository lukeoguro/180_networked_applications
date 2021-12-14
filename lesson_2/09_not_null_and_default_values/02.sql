ALTER TABLE employees
ALTER department
SET DEFAULT 'unassigned';

UPDATE employees
SET department = 'unassigned'
WHERE department IS NULL;

ALTER TABLE employees
ALTER department
SET NOT NULL;