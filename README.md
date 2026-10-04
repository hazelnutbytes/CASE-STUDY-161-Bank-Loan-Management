# Bank Loan and EMI Management Database

A PostgreSQL database project for managing customers, loans, loan types, and loan payments.

## Features

- Customer and loan management
- Different loan types
- Loan payment records
- Simple interest calculation
- Monthly EMI calculation
- Active and closed loan reports
- Find customers with loans above ₹10,00,000
- Calculate estimated outstanding principal by loan type
- SQL JOINs and aggregation

## Database Tables

- `customers` – stores customer details
- `loan_type` – stores different loan types
- `loan` – stores loan details
- `loan_payment` – stores payment records

## Technologies Used

- PostgreSQL
- SQL
- VS Code

## Calculations

### Simple Interest

```text
Simple Interest = P × R × T / 100
