# Data Warehouse Lab (E-commerce)

## Tech Stack
- MySQL
- SQL (DataGrip)
- Git/GitHub

## Data Model (Source)
Database: `nico_lab`
Tables:
- customers
- products
- orders
- order_items
- payments

## Warehouse Layers
Database: `dw_lab`
- ODS: raw mirror tables (full load)
- DWD/DWS/ADS: to be built

## How to Run
1. Run ODS full load: `sql/ods/02_full_load_ods.sql`
2. Run reconciliation: `sql/ods/03_reconcile_ods.sql`

