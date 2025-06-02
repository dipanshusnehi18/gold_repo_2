with cutomer_source as(
    select * from {{source('sample','customer')}}

),
cleanup_customer as (
    select C_ADDRESS as address,C_NAME as name,C_NATIONKEY as nationkey ,C_ACCTBAL as balance,C_MKTSEGMENT as segement
    from cutomer_source
)
select * from cleanup_customer
