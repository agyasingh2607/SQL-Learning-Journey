# Basics Part 3

Course exercises and notes for Basics Part 3.

# SQL Basics - Part 3 🚀

This section introduces SQL Fundamentals concepts focused on sorting, filtering unique data, aggregate functions, grouping records, and filtering grouped results.

## 📚 Topics Covered

* ✅ ORDER BY
* ✅ ASC and DESC Sorting
* ✅ DISTINCT
* ✅ Aggregate Functions
  * COUNT()
  * SUM()
  * AVG()
  * MIN()
  * MAX()
* ✅ GROUP BY
* ✅ HAVING
* ✅ Column Aliases
* ✅ Table Aliases
* ✅ CAST Function

---

## 🛠 Concepts Practiced

### Sorting Data

* Sorting records using `ORDER BY`.
* Sorting in Ascending (`ASC`) and Descending (`DESC`) order.
* Sorting using multiple columns.

### Removing Duplicate Records

* Using `DISTINCT` to return only unique values.
* Counting unique values using `COUNT(DISTINCT ColumnName)`.

### Aggregate Functions

* Finding total records using `COUNT()`.
* Calculating totals with `SUM()`.
* Finding averages using `AVG()`.
* Finding minimum and maximum values using `MIN()` and `MAX()`.
* Converting integer values using `CAST()` before calculating averages.

### Grouping Data

* Grouping records using `GROUP BY`.
* Generating summary reports for each group.
* Understanding why every non-aggregated column must be included in the `GROUP BY` clause.

### Filtering Groups

* Using `HAVING` to filter grouped results.
* Understanding the difference between `WHERE` and `HAVING`.
* Applying aggregate conditions after grouping.

### SQL Best Practices

* Using meaningful column aliases.
* Using table aliases to improve query readability.
* Writing clean and maintainable SQL queries.

---

## 📂 Files in This Section

```text
ORDERBY.sql
DISTINCT.sql
AggregateFunctions.sql
GROUPBY.sql
HAVING.sql
Aliases.sql
CAST.sql
```

---

## 🎯 Learning Outcome

After completing this section, you will be able to:

* Sort query results using single and multiple columns.
* Retrieve unique records using `DISTINCT`.
* Perform calculations using SQL aggregate functions.
* Summarize data using `GROUP BY`.
* Filter grouped data using `HAVING`.
* Use aliases to improve query readability.
* Apply `CAST()` to perform accurate calculations.
* Write cleaner and more efficient SQL queries following SQL Server best practices.