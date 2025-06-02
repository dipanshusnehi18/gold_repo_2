with customer_intermediate as(
    select * from {{source('inter_sample','tpch_customer')}}

),
cleanup_inter_customer as (
    select nationkey ,balance
    from customer_intermediate
)
select * from cleanup_inter_customer
