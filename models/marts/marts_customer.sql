with customer_marts as(
    select * from {{source('marts_sample','tpch_intermediate_customer')}}

),
cleanup_marts_customer as (
    select nationkey ,avg(balance)   
    from customer_marts
    group by nationkey
)
select * from cleanup_marts_customer
