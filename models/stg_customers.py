import pandas as pd

def model(dbt, session):
  
    dbt.config(
        materialized="table",
        tags=["staging"]
    )

  
    df = dbt.ref("CUSTOMER").to_pandas()

    
    df["full_name"] = df["first_name"] + " " + df["last_name"]
    df["email"] = df["email"].str.lower()
    df = df[df["age"] > 18] # adults only

   
    return df[["customer_id", "full_name", "email", "age"]]