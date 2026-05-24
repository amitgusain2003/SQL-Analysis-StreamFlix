# 🎬 StreamFlix — OTT Platform Database Analysis

> A SQL project analyzing a Netflix-style OTT platform database using PostgreSQL.

\---

## 📸 Preview

!\[Query Results](https://github.com/amitgusain2003/SQL-Analysis-StreamFlix/blob/main/pgADMIN_screenshot.png)

\---

## 🎯 About This Project

Built a relational database for a fictional streaming platform **StreamFlix** and performed data analysis using SQL.

The database contains **30 movies**, **10 users**, and **30 ratings** — and I wrote queries to find patterns like which platform has the best-rated content, which users are most active, and which movies are most watched.

\---

## 🗃️ Database Design

3 tables connected via foreign keys:

```
movies ──────────┐
                 ├──→ ratings
users  ──────────┘
```

|Table|Columns|Rows|
|-|-|-|
|`movies`|movie\_id, title, genre, language, release\_year, rating, duration\_min, platform|30|
|`users`|user\_id, name, age, city, subscription, joined\_date|10|
|`ratings`|rating\_id, user\_id, movie\_id, user\_rating, watched\_date|30|

\---

## 📂 Files

|File|Description|
|-|-|
|`schema.sql`|CREATE TABLE + all INSERT data|
|`SQL OTT Database Analysis`|All 8 analysis queries|
|`database\_analysis\_screenshot.png`|pgAdmin query result screenshot|

\---

## 🔍 Queries Written

|#|Question Answered|Concepts Used|
|-|-|-|
|1|Show all movies|SELECT|
|2|Netflix movies only|WHERE|
|3|Movies rated above 8.5|WHERE + ORDER BY|
|4|Movie count per platform|GROUP BY + COUNT|
|5|Average rating per platform|GROUP BY + AVG + ROUND|
|6|How many movies each user rated|JOIN + COUNT + GROUP BY|
|7|Most rated movie|JOIN + COUNT + LIMIT|
|8|Highest rating given by each user|JOIN + MAX + GROUP BY|

\---

## 💡 Key Insights

* **Scam 1992** is the highest rated title with 9.5 rating
* **Prime Video** has the largest content library in the database
* **6 out of 10 users** gave a maximum rating of 9.5
* Most watched content is from **Crime Thriller** genre
* **Premium subscribers** are the most active raters

\---

## 🛠️ Tools Used

* **PostgreSQL 18** — Database
* **pgAdmin 4** — Query Editor
* **SQL** — Analysis Language

\---

## 🚀 How to Run

```sql
-- Step 1: Create database
CREATE DATABASE streamflix\_db;

-- Step 2: Run schema.sql (creates tables + inserts data)
-- Step 3: Run SQL OTT Database Analysis (all queries)
```

\---

## 📚 What I Learned

* Designing a **relational database** with primary and foreign keys
* Writing **JOIN queries** to combine data from multiple tables
* Using **GROUP BY + aggregate functions** (COUNT, AVG, MAX)
* Difference between **WHERE** and **HAVING**
* Using **ORDER BY + LIMIT** to get top results

\---

## 👨‍💻 Author

**Amit Gusain**  
Aspiring Data Analyst | SQL · Excel · Power BI

> ⭐ Star this repo if you found it useful!

