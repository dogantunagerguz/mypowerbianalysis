# Power BI Operations Analytics

## Business context

A reporting concept for a small service business with driver-training, psychotechnical assessment and travel operations. The purpose is to combine scattered Excel and CRM sources into a reusable reporting model for management and operations teams.

The repository documents the analytical approach. It does not contain confidential company data or a real PBIX file.

## Business questions

- How many candidates are active in each segment?
- Which sales and payment activities require follow-up?
- What is the relationship between bookings, revenue and operational workload?
- Which KPIs can be standardised across operations, finance and sales?
- How can weekly reporting effort be reduced through reusable transformations and measures?

## Proposed data model

| Table | Purpose | Example key |
|---|---|---|
| Customers | Candidate and customer attributes | CustomerID |
| Sales | Enrolment and sales activity | SaleID |
| Bookings | Service and booking events | BookingID |
| Payments | Payment tracking | PaymentID |
| Operations | Service delivery and workload | OperationID |
| Calendar | Date intelligence | Date |

## Power Query / ETL steps

1. Import source tables from Excel or CSV.
2. Standardise column names and data types.
3. Remove duplicate records using business keys.
4. Validate missing and inconsistent values.
5. Create reusable dimension and fact tables.
6. Load the model into Power BI.
7. Document refresh assumptions and quality checks.

## KPI layer

- Total customers
- Active customers
- Enrolment conversion rate
- Revenue
- Payment completion rate
- Open follow-up count
- Capacity utilisation
- Reporting hours before and after standardisation

## CV connection

This project supports CV statements about Power Query, DAX, KPI reporting, data-quality checks, management reporting and operational decision support.

## Evidence still to add

- Anonymised dashboard screenshot or PDF export
- Relationship/model screenshot
- Power Query Applied Steps screenshot
- DAX measure list
- Before/after reporting process evidence

