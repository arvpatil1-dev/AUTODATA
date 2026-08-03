# AUTODATA - dbt + Snowflake Data Pipeline

## Tech Stack
`dbt Core` | `Snowflake` | `SQL`

## Project Overview
This project demonstrates a modern data transformation pipeline using dbt and Snowflake. Raw data is transformed into clean, analytics-ready models following dbt best practices.

## Key Features
1. **Modular Data Modeling**: Built Staging → Intermediate → Mart layers using dbt
2. **Data Quality**: Implemented 20+ tests for nulls, uniqueness, and referential integrity
3. **Documentation**: Auto-generated dbt docs for data lineage and model descriptions
4. **Performance**: Used Snowflake Warehouses and dbt materializations for optimized queries

## How to Run
```bash
# 1. Install dependencies
dbt deps

# 2. Run all models
dbt run

# 3. Test data quality
dbt test

# 4. Generate documentation
dbt docs generate

# 5. View documentation locally
dbt docs serve
