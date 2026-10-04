-- Calculate estimated simple-interest values.

-- Formula: principal × rate × time / 100

select 
    loan_id,
    principal,
    interest_rate,
    tenure,
    round(principal * interest_rate * (tenure / 12.0) / 100, 2) as simple_interest
from loan;


-- Calculate monthly installment using EMI formula

select
    loan_id,
    principal,
    interest_rate,
    tenure,
    round(
        principal *
        (interest_rate / 12 / 100) *
        power(1 + (interest_rate / 12 / 100), tenure) /
        (power(1 + (interest_rate / 12 / 100), tenure) - 1),
        2
    ) as monthly_installment
from loan;

-- Display active and closed loans

select 
    loan_id,
    customer_id,
    principal,
    loan_status
from loan 
where loan_status in ('active', 'closed');

-- Find customers with loans above ₹10,00,000

select
    c.customer_name,
    l.loan_id,
    l.principal
from customers as c
join loan as l
on c.customer_id = l.customer_id
where l.principal > 1000000;

-- Calculate total outstanding principal by loan type

select
    lt.loan_type_name,
    sum(l.principal - p.total_paid) as outstanding_principal
from loan as l
join loan_type as lt
on l.loan_type_id = lt.loan_type_id
join (
    select
        loan_id,
        sum(amount) as total_paid
    from loan_payment
    where payment_status = 'completed'
    group by loan_id
) as p
on l.loan_id = p.loan_id
group by lt.loan_type_name;

-- case query
select
    loan_id,
    principal,
    case
        when principal >= 1000000 then 'high loan'
        when principal >= 500000 then 'medium loan'
        else 'low loan'
    end as loan_category
from loan;