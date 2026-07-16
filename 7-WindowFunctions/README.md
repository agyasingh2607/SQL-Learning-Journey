# Window Functions 🚀

This section focuses on SQL Server Window Functions, one of the most powerful features for analytical queries. Window Functions perform calculations across a set of related rows while still returning every individual row, making them ideal for reporting, ranking, comparisons, and business analytics.

---

# 📚 Topics Covered

✅ OVER()

✅ PARTITION BY

✅ ROW_NUMBER()

✅ RANK()

✅ DENSE_RANK()

✅ NTILE()

✅ LAG()

✅ LEAD()

✅ FIRST_VALUE()

✅ LAST_VALUE()

---

# 🛠 Concepts Practiced

## Understanding Window Functions

- Learning how Window Functions perform calculations across related rows without grouping the result.
- Understanding why they are called Window Functions.
- Using the `OVER()` clause to define the window.
- Creating multiple windows using `PARTITION BY`.
- Ordering rows within each partition using `ORDER BY`.

---

## ROW_NUMBER()

- Assigning a unique sequential number to every row.
- Restarting numbering for each partition.
- Understanding that duplicate values still receive different row numbers.
- Using ROW_NUMBER() for pagination and Top-N queries.

---

## RANK()

- Ranking rows based on a specified order.
- Assigning the same rank to duplicate values.
- Understanding why the next rank is skipped after duplicates.

---

## DENSE_RANK()

- Ranking rows while keeping duplicate values at the same rank.
- Understanding how DENSE_RANK() differs from RANK().
- Ensuring no rank numbers are skipped.

---

## NTILE()

- Dividing rows into a specified number of groups.
- Understanding how SQL Server distributes rows as evenly as possible.
- Using NTILE() for segmentation and reporting.

---

## LAG()

- Retrieving values from the previous row.
- Comparing current records with previous records.
- Eliminating the need for self joins in comparison queries.

---

## LEAD()

- Retrieving values from the next row.
- Comparing current records with upcoming records.
- Simplifying sequential data analysis.

---

## FIRST_VALUE()

- Returning the first value within each partition.
- Sharing the first record's value across all rows in the same partition.
- Using FIRST_VALUE() for historical and baseline comparisons.

---

## LAST_VALUE()

- Returning the last value within a window.
- Understanding why the default window frame often returns the current row.
- Extending the window using `ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING` to retrieve the actual last value.

---

# 💼 Real-World Uses

- Ranking employees by salary. → **ROW_NUMBER(), RANK(), DENSE_RANK()**
- Finding the Top N records in each department. → **ROW_NUMBER(), RANK()**
- Comparing today's sales with yesterday's sales. → **LAG()**
- Showing previous and next transaction values. → **LAG(), LEAD()**
- Finding the first order placed by each customer. → **FIRST_VALUE()**
- Finding the latest/last transaction for each customer. → **LAST_VALUE()**
- Dividing customers into performance groups. → **NTILE()**
- Building reports and dashboards using rankings, comparisons, and analytics. → **All Window Functions**

---

# 📂 Files in This Section

```text
ROW_NUMBER.sql
RANK.sql
DENSE_RANK.sql
NTILE.sql
LAG.sql
LEAD.sql
FIRST_VALUE.sql
LAST_VALUE.sql
```

---

# 🎯 Learning Outcome

After completing this section, you will be able to:

- Understand how Window Functions work in SQL Server.
- Use the OVER() clause with PARTITION BY and ORDER BY.
- Assign row numbers using ROW_NUMBER().
- Rank records using RANK() and DENSE_RANK().
- Split records into groups using NTILE().
- Compare rows using LAG() and LEAD().
- Retrieve the first and last values within a partition.
- Write cleaner analytical queries without using complex self joins.
- Build production-ready reports and business analytics using Window Functions.

---

# 📌 Quick Revision (One Minute)

```text
WINDOW FUNCTION → Calculates across related rows

OVER() → Defines the Window

PARTITION BY → Creates Multiple Windows

ROW_NUMBER() → Unique Number

RANK() → Same Rank, Skip Next

DENSE_RANK() → Same Rank, No Skip

NTILE() → Split Rows into Groups

LAG() → Previous Row

LEAD() → Next Row

FIRST_VALUE() → First Value in Window

LAST_VALUE() → Last Value in Window Frame
```