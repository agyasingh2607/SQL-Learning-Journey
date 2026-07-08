# Basics Part 2

Course exercises and notes for Basics Part 2.

# Basics Part 2

Course exercises and notes for Basics Part 2.

# SQL Basics - Part 2 🚀

This section builds upon the SQL fundamentals by introducing data filtering, table copying, data deletion, and backup restoration concepts.

## 📚 Topics Covered

* ✅ Restoring a Database Backup
* ✅ TOP Clause
* ✅ WHERE Clause
* ✅ Comparison Operators (`=`, `<>`, `<`, `>`)
* ✅ LIKE Operator
* ✅ IN Operator
* ✅ BETWEEN Operator
* ✅ INTO Statement
* ✅ Limitations of `SELECT INTO`
* ✅ DELETE Statement
* ✅ TRUNCATE TABLE
* ✅ UPDATE Statement

---

## 🛠 Concepts Practiced

### Database Restoration

* Restoring an existing database from a backup.
* Working with the AdventureWorks sample database.

### Data Retrieval

* Limiting results using `TOP`.
* Filtering records using `WHERE`.
* Using comparison operators.
* Searching with `LIKE`.
* Filtering multiple values using `IN`.
* Filtering ranges using `BETWEEN`.
* Combining conditions with `AND` and `OR`.

### Table Copying

* Creating a new table using `SELECT INTO`.
* Understanding the limitations of tables created with `SELECT INTO`.
* Inserting new records into copied tables.

### Data Modification

* Updating records using `UPDATE`.
* Removing selected records using `DELETE`.
* Removing all records using `TRUNCATE TABLE`.
* Understanding the differences between `DELETE` and `TRUNCATE`.

### Additional Concepts

* Working with `NULL` values using `IS NULL` and `IS NOT NULL`.
* Understanding why `NULL` cannot be compared using `=` or `<>`.
* Using `DROP TABLE IF EXISTS` to safely recreate tables.

---

## 📂 Files in This Section

```text
RestoreDatabase.sql
TOP.sql
WHERE.sql
INTO.sql
DELETEvsTRUNCATE.sql
UPDATE.sql
```

---

## 🎯 Learning Outcome

After completing this section, you will be able to:

* Restore and work with an existing SQL Server database.
* Retrieve specific records using filtering techniques.
* Use comparison, pattern matching, and range operators.
* Create new tables from existing data using `SELECT INTO`.
* Update and remove data using `UPDATE`, `DELETE`, and `TRUNCATE`.
* Understand how SQL Server handles `NULL` values and filtering.