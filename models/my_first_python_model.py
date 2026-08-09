def model(dbt,session):
    dbt.config(materialized="table")
    df = dbt.source("raw","CUSTOMER")
    df = df.with_column("NEW_COL",df['CUSTOMER_ID']*1)
    return df
