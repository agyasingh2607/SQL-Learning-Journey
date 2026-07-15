# Indexes 🚀

This section focuses on SQL Server Indexes and Keys, which are essential for improving query performance and maintaining data integrity. Indexes help SQL Server locate data quickly, while keys ensure each record can be uniquely identified.

---

# 📚 Topics Covered

✅ Clustered Index

✅ Nonclustered Index

✅ Unique Index

✅ Primary Key

✅ Composite Key

---

# 🛠 Concepts Practiced

## Understanding Indexes

- Learning how indexes improve query performance.
- Understanding how SQL Server locates data efficiently.
- Comparing table scans with index seeks.
- Exploring when indexes should be used.

---

## Clustered Index

- Understanding how data is physically stored in sorted order.
- Learning that only one Clustered Index can exist per table.
- Seeing how SQL Server automatically maintains the sorted order after INSERT, UPDATE, and DELETE operations.
- Understanding why Clustered Indexes are ideal for range searches.

---

## Nonclustered Index

- Creating separate index structures without changing the physical order of table data.
- Understanding how Nonclustered Indexes store indexed values along with pointers to the actual rows.
- Learning that multiple Nonclustered Indexes can exist on a single table.
- Improving search performance on frequently queried columns.

---

## Unique Index

- Preventing duplicate values within indexed columns.
- Understanding how SQL Server enforces uniqueness.
- Learning when a Unique Index should be used.

---

## Primary Key

- Creating a Primary Key to uniquely identify each record.
- Understanding that Primary Keys do not allow NULL or duplicate values.
- Learning that SQL Server creates a Clustered Index by default unless specified otherwise.

---

## Composite Key

- Creating a Primary Key using multiple columns.
- Understanding when a single column is not sufficient to uniquely identify a record.
- Using composite keys to enforce uniqueness across multiple fields.

---

# 💼 Real-World Scenarios

- Speeding up searches on large tables.
- Improving application performance for frequently executed queries.
- Preventing duplicate business data using Unique Indexes.
- Creating Primary Keys to uniquely identify records.
- Using Composite Keys for many-to-many relationship tables.
- Designing efficient database structures for enterprise applications.

---

# 📂 Files in This Section

```
ClusteredIndex.sql
NonClusteredIndex.sql
UniqueIndex.sql
PrimaryKey.sql
CompositeKey.sql
```

---

# 🎯 Learning Outcome

After completing this section, you will be able to:

- Understand the purpose of SQL Server Indexes.
- Explain the difference between Clustered and Nonclustered Indexes.
- Create and use Unique Indexes.
- Design tables using Primary Keys.
- Create Composite Keys using multiple columns.
- Choose the appropriate indexing strategy based on different scenarios.
- Improve query performance using proper indexing techniques.
- Build more efficient and production-ready SQL Server databases.

---

# 📌 Quick Revision (One Minute)

```
INDEX → Makes data retrieval faster

CLUSTERED INDEX → Stores actual table data in sorted order (Only One)

NONCLUSTERED INDEX → Separate lookup structure (Many Allowed)

UNIQUE INDEX → Prevents duplicate values

PRIMARY KEY → Unique identifier (No NULL, No Duplicates)

COMPOSITE KEY → Primary Key using multiple columns
```