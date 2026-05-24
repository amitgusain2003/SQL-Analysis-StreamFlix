# 🎬 StreamFlix — OTT Database Analysis (SQL)

Hey! I'm Amit, an aspiring Data Analyst. This is one of my practice projects where I built a small database for a fictional OTT platform (think Netflix) and analyzed it using SQL.

---

## 📸 Preview

![Query Results](https://raw.githubusercontent.com/amitgusain2003/StreamFlix-SQL-Analysis/main/pgadmin_screenshot.png)

---

## 🤔 What is this project?

I created a database with 3 tables — **movies, users, and ratings** — and then wrote SQL queries to answer questions like:

- Which platform has the most movies?
- Who gave the highest rating?
- Which movie was rated the most?

Simple questions, but they taught me a lot about how real databases work!

---

## 🗃️ Database Structure

```
movies  →  30 movies (title, genre, platform, rating...)
users   →  10 users  (name, city, subscription...)
ratings →  30 ratings (who rated which movie)
```

These 3 tables are connected to each other using **foreign keys** — that's how SQL knows which user rated which movie.

---

## 📂 Files in this repo

| File | What it does |
|------|-------------|
| `schema.sql` | Creates all 3 tables and inserts the data |
| `SQL OTT Database Analysis.sql` | All my analysis queries |
| `pgadmin_screenshot.png` | Screenshot of query results |

---

## 🔍 Queries I wrote

1. Show all movies
2. Netflix movies only
3. Movies rated above 8.5
4. How many movies does each platform have?
5. Average rating per platform
6. How many movies did each user rate?
7. Which movie was rated the most?
8. Highest rating given by each user

---

## 💡 What I found

- **Scam 1992** is the highest rated show (9.5 ⭐)
- **Prime Video** has the most content
- Most users gave a max rating of **9.5**
- **Crime Thriller** is the most watched genre

---

## 🛠️ Tools used

- PostgreSQL + pgAdmin 4
- SQL

---

## 👨‍💻 About me

I'm learning Data Analytics — currently practicing SQL, Excel, and Power BI. This project is part of my learning journey!

> ⭐ If this helped you, feel free to star the repo!
