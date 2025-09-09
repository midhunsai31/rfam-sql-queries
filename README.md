# Rfam SQL Queries

This repository contains SQL queries to solve the Rfam database aptitude questions. Each query is written for MySQL and includes **sample outputs as comments** for reference.

Rfam is a **public database of RNA families**, including sequence, taxonomy, and functional information. This repo demonstrates how to query species, sequences, and family data using SQL.


## Files Overview

1. `1_tiger_queries.sql` – Count tiger types and find the Sumatran Tiger `ncbi_id`.  
2. `2_join_columns.sql` – Show columns that can be used to connect tables.  
3. `3_rice_queries.sql` – Find rice species with the longest DNA sequence.  
4. `4_family_pagination.sql` – Paginate family names with sequences greater than 1,000,000 bp.  

Each SQL file contains **commented sample outputs** from verified queries to make it easier to cross-check results.

## Database Connection

- **Host:** `mysql-rfam-public.ebi.ac.uk`  
- **User:** `rfamro`  
- **Password:** *none*  
- **Port:** `4497`  
- **Database:** `Rfam`  

## How to Use

1. Open a MySQL client (command line, MySQL Workbench, or any preferred client).  
2. Connect using the credentials above.  
3. Open the `.sql` file of interest.  
4. Copy and paste the query into the client to execute.  
5. Compare the results with the **commented sample outputs** in the SQL files.  

## Notes

- Queries are written for **MySQL** and tested on the public Rfam database.  
- Some queries may take a few minutes due to large sequence data.

