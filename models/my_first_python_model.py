def model(dbt,session):
    dbt.config(materialized="table")
    df = dbt.ref("CUSTOMER").to_pandas()
    df["NEW_COL"]=df['CUSTOMER_ID']*1
    return df
