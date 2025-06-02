select C_mktsegment,sum(C_ACCTBAL) as total_c_acctbal from {{source('silver','customer')}}
group by C_mktsegment