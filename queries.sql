.sql


-- Retirement eligibility Employees born between 1952-1955
select first_name, last_name
from employees
where birth_date between '1952-01-01' and '1955-12-31';

-- Employes born in 1952
select first_name, last_name
from employees
where birth_date between '1952-01-01' and '1952-12-31';

-- Employes born in 1953
select first_name, last_name
from employees
where birth_date between '1953-01-01' and '1953-12-31';

-- Employes born in 1954
select first_name, last_name
from employees
where birth_date between '1954-01-01' and '1954-12-31';

-- Employes born in 1955
select first_name, last_name
from employees
where birth_date between '1955-01-01' and '1955-12-31';



-- Retirement eligibility Employees born between 1952-1955
select first_name, last_name
from employees
where (birth_date between '1952-01-01' and '1955-12-31') 
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Exporting Retirement eligibility Employees born between 1952-1955
select first_name, last_name
into retirement_info
from employees
where (birth_date between '1952-01-01' and '1955-12-31') 
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info;