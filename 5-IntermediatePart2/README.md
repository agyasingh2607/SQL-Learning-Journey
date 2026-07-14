# SQL Intermediate - Part 2 🚀

This section focuses on combining data from multiple tables and result sets using SQL joins and set operators. These concepts are used extensively in real-world applications to build reports, retrieve related information, compare datasets, and create meaningful business insights.

---

# 📚 Topics Covered

✅ INNER JOIN (JOIN)

✅ LEFT JOIN

✅ RIGHT JOIN

✅ FULL OUTER JOIN

✅ OUTER APPLY

✅ CROSS APPLY

✅ UNION

✅ UNION ALL

✅ EXCEPT

---

# 🛠 Concepts Practiced

## Joining Multiple Tables

- Combining data from two or more tables using a common key.
- Understanding Primary Key and Foreign Key relationships.
- Using the `ON` clause to define matching conditions.
- Retrieving related information from multiple tables.

---

## INNER JOIN

- Returning only matching records from both tables.
- Understanding the intersection of two datasets.
- Learning that `JOIN` and `INNER JOIN` are identical in SQL Server.
- Understanding that table order does not affect the result.

---

## LEFT JOIN

- Returning all rows from the left table.
- Retrieving matching rows from the right table.
- Displaying `NULL` when no matching record exists.
- Understanding how changing table order changes the output.

---

## RIGHT JOIN

- Returning all rows from the right table.
- Retrieving matching rows from the left table.
- Handling missing matches using `NULL`.
- Understanding that `RIGHT JOIN` and `RIGHT OUTER JOIN` perform the same operation.

---

## FULL OUTER JOIN

- Returning every row from both tables.
- Including matched and unmatched records.
- Understanding how SQL fills unmatched columns with `NULL`.
- Learning that table order does not affect the result.

---

## APPLY Operators

### OUTER APPLY

- Executing a subquery for every row of the outer query.
- Returning all rows from the left table.
- Returning `NULL` when the applied query returns no result.
- Useful for retrieving Top 1, latest, earliest, or aggregated records.

### CROSS APPLY

- Executing a subquery for every row of the outer query.
- Returning only rows where the applied query produces a result.
- Behaves similarly to an INNER JOIN.
- Useful for correlated subqueries and table-valued functions.

---

## UNION

- Combining results from multiple SELECT statements.
- Understanding the requirement for matching column count and compatible data types.
- Removing duplicate rows automatically.
- Combining data from different queries into a single result set.

---

## UNION ALL

- Combining multiple result sets without removing duplicates.
- Understanding performance advantages over UNION.
- Preserving every returned row.

---

## EXCEPT

- Comparing two result sets.
- Returning rows that exist only in the first query.
- Removing records found in the second query.
- Useful for data validation and comparison.

---

# 💼 Real-World Scenarios

- Display employee information along with department details.
- Generate HR and payroll reports using multiple related tables.
- Retrieve customers even if they have never placed an order.
- Identify orphan records and missing relationships.
- Find the first or latest record within each group using APPLY.
- Merge data from multiple reports using UNION.
- Preserve duplicate records using UNION ALL.
- Compare datasets using EXCEPT to identify differences.
- Build production reporting queries using multiple joins.

---

# 📂 Files in This Section

```
InnerJoin.sql
LeftJoin.sql
RightJoin.sql
FullOuterJoin.sql
OuterApply.sql
CrossApply.sql
Union.sql
UnionAll.sql
Except.sql
```

---

# 🎯 Learning Outcome

After completing this section, you will be able to:

- Combine data from multiple related tables.
- Choose the correct JOIN based on business requirements.
- Understand the difference between INNER, LEFT, RIGHT, and FULL JOIN.
- Use APPLY operators for advanced row-by-row querying.
- Merge multiple result sets using UNION and UNION ALL.
- Compare datasets using EXCEPT.
- Understand how table order affects LEFT and RIGHT JOIN.
- Write cleaner, production-ready SQL queries involving multiple tables.
- Build reporting queries commonly used in enterprise applications.

---

# 📌 Quick Revision (One Minute)

```
JOIN / INNER JOIN → Only Matching Records

LEFT JOIN → All Left + Matching Right

RIGHT JOIN → All Right + Matching Left

FULL OUTER JOIN → All Records from Both Tables

OUTER APPLY → Like LEFT JOIN with a Subquery

CROSS APPLY → Like INNER JOIN with a Subquery

UNION → Combine Results (Removes Duplicates)

UNION ALL → Combine Results (Keeps Duplicates)

EXCEPT → First Result Minus Second Result
```