# Intermediate Part 1

Course exercises and notes for Intermediate Part 1.

# SQL Intermediate - Part 1 🚀

This section focuses on SQL Server built-in functions that help clean, transform, format, and manipulate data. It also covers conditional logic, date functions, and string aggregation techniques commonly used in real-world SQL development.

## 📚 Topics Covered

* ✅ ISNULL()
* ✅ COALESCE()
* ✅ NULLIF()
* ✅ CAST()
* ✅ CONVERT()
* ✅ Date Functions
  * GETDATE()
  * DATEADD()
  * DATEDIFF()
* ✅ CASE Expression
* ✅ STRING_AGG()
* ✅ FOR XML PATH()
* ✅ STUFF()

---

## 🛠 Concepts Practiced

### Handling NULL Values

* Replacing NULL values using `ISNULL()`.
* Returning the first non-NULL value using `COALESCE()`.
* Converting matching values to NULL using `NULLIF()`.
* Understanding when to use each function.

### Data Type Conversion

* Converting data types using `CAST()`.
* Formatting dates and money values using `CONVERT()`.
* Understanding the difference between `CAST()` and `CONVERT()`.

### Date Functions

* Retrieving the current date and time using `GETDATE()`.
* Adding and subtracting dates using `DATEADD()`.
* Calculating the difference between two dates using `DATEDIFF()`.
* Practical examples such as calculating age and shifting dates.

### Conditional Logic

* Using `CASE` expressions to return values based on conditions.
* Creating nested `CASE` statements.
* Using `CASE` with aggregate functions for reporting and analysis.

### String Aggregation

* Combining multiple rows into a single string using `STRING_AGG()`.
* Grouping values before aggregation.
* Creating comma-separated and custom-delimited lists.

### Legacy String Aggregation

* Understanding how `FOR XML PATH()` was used before `STRING_AGG()`.
* Using `STUFF()` to remove unwanted leading characters.
* Comparing modern and legacy approaches for string aggregation.

### SQL Best Practices

* Handling NULL values safely in comparisons.
* Choosing the appropriate built-in function for different scenarios.
* Writing cleaner, more readable SQL using built-in functions.
* Understanding SQL Server version differences for string aggregation.

---

## 📂 Files in This Section

```text
ISNULL.sql
COALESCE.sql
NULLIF.sql
CAST.sql
CONVERT.sql
DateFunctions.sql
CASE.sql
STRING_AGG.sql
FORXMLPATH.sql
STUFF.sql
```

---

## 🎯 Learning Outcome

After completing this section, you will be able to:

* Handle NULL values using `ISNULL()`, `COALESCE()`, and `NULLIF()`.
* Convert and format data using `CAST()` and `CONVERT()`.
* Work with dates using `GETDATE()`, `DATEADD()`, and `DATEDIFF()`.
* Apply conditional logic using `CASE`.
* Aggregate string values using `STRING_AGG()`.
* Understand the legacy `FOR XML PATH()` and `STUFF()` approach for string aggregation.
* Choose the appropriate built-in function based on the scenario.
* Write cleaner, more maintainable, and production-ready SQL queries.

 ## 📌 Quick Revision (One Minute)
ISNULL() → Replace NULL (2 values only)
COALESCE() → First non-NULL value (multiple values)
NULLIF() → If equal → NULL, else first value
CAST() → Convert data type
CONVERT() → Convert + format (dates)
GETDATE() → Current date & time
DATEADD() → Add/Subtract dates
DATEDIFF() → Difference between two dates
CASE → SQL's IF...ELSE
STRING_AGG() → Combine rows into one string
STUFF() → Remove/replace characters; older row concatenation workaround	