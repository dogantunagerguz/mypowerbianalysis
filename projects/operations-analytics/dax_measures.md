# DAX Measure Examples

These examples are documentation samples for the portfolio structure. Table and column names must be adapted to the final anonymised model.

```DAX
Total Revenue =
SUM ( Payments[Amount] )
```

```DAX
Active Customers =
CALCULATE (
    DISTINCTCOUNT ( Customers[CustomerID] ),
    Customers[Status] = "Active"
)
```

```DAX
Enrolment Conversion Rate =
DIVIDE (
    DISTINCTCOUNT ( Sales[CustomerID] ),
    DISTINCTCOUNT ( Customers[CustomerID] )
)
```

```DAX
Payment Completion Rate =
DIVIDE (
    CALCULATE (
        COUNTROWS ( Payments ),
        Payments[Status] = "Paid"
    ),
    COUNTROWS ( Payments )
)
```

```DAX
Capacity Utilisation =
DIVIDE (
    SUM ( Operations[UsedCapacity] ),
    SUM ( Operations[AvailableCapacity] )
)
```

## Documentation standard

For every final measure, document:

- Business definition
- Formula logic
- Filter context
- Data source
- Owner or stakeholder
- Validation method

The final repository should include only measures that can be demonstrated in the anonymised model.
