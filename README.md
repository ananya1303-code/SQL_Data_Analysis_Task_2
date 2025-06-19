# SQL_Data_Analysis_Task_2

COMPANY: CodTech IT Solutions
NAME: Ananya Verma 
INTERN ID: CT04DG180 
DOMAIN: SQL
DURATION: 4 Weeks
MENTOR: Neela Santhosh Kumar

---

## Task Description

The second task in my internship journey at CodTech IT Solutions was all about **advanced data analysis using SQL**. This task focused on writing **complex SQL queries** that demonstrate deep data insight and problem-solving abilities using **Window Functions**, **Subqueries**, and **Common Table Expressions (CTEs)**.

The objective of this task was to simulate a real-world database analysis scenario where a business wants to understand customer behavior, purchasing trends, and revenue patterns through the use of SQL queries. This required designing a meaningful schema, writing powerful queries, and analyzing the outcomes.

### Database Design

For this task, I created two relational tables:
1. `customers` – contained fields such as `customer_id`, `customer_name`, `location`, and `email`.
2. `orders` – included fields like `order_id`, `customer_id`, `order_date`, and `amount`.

I entered realistic data with unique, short, and foreign-sounding names like Luca, Leo, Nova, and Mylo. Instead of using "Kolkata" as the city, I went with "Hyderabad" to diversify the dataset. This dataset was simple but rich enough to extract meaningful patterns.

### Querying Process

I used several advanced SQL techniques in this task:

- **Window Functions** like `RANK()`, `ROW_NUMBER()`, and `SUM() OVER(PARTITION BY...)` helped rank customers and calculate cumulative totals without losing individual row visibility.
- **Subqueries** were used to filter data based on aggregated values, like selecting only the customers whose total orders crossed a certain threshold.
- **Common Table Expressions (CTEs)** improved readability and allowed modular query writing, making complex logic easier to follow.

Each query served a unique purpose, such as:
- Finding the top customers by spending.
- Calculating monthly revenue patterns.
- Tracking customer order frequency.
- Identifying loyal vs. new customers.

These queries were tested using **DB Fiddle** (MySQL 5.7) to ensure accurate syntax and valid results. The outputs were interpreted and screenshots taken for documentation.

### Outcome

The queries provided valuable insights, like:
- Who the highest-paying customers were.
- Revenue trends across order dates.
- Repeat behavior of customers.
- Customers with the highest number of transactions.

This process felt like **real-life data storytelling**, where SQL became the language to decode business patterns.

### Learnings

- I learned how to write cleaner and more efficient queries using **window functions** instead of relying solely on `GROUP BY`.
- I discovered how **subqueries and CTEs** can break down large problems into manageable chunks.
- I practiced formatting and structuring SQL code for readability.
- It was fun experimenting and debugging errors — especially those caused by syntax differences or missing joins.

Finally, all SQL queries and results were saved in a `.sql` file and uploaded to my GitHub repository. This helped keep the work organized and sharable via link for internship submission.

This task sharpened both my logical thinking and SQL query writing skills. I now feel more comfortable with real-time database analysis challenges and more confident handling advanced queries in professional scenarios.

### Output

<img width="1235" alt="Screenshot 2025-06-19 at 5 26 37 PM" src="https://github.com/user-attachments/assets/8d440991-11fe-49e0-97fe-bae152007e97" />
<img width="1231" alt="Screenshot 2025-06-19 at 5 28 04 PM" src="https://github.com/user-attachments/assets/d505a1e9-4ec3-49c6-849a-c0a82557eec4" />
<img width="1453" alt="Screenshot 2025-06-19 at 5 29 43 PM" src="https://github.com/user-attachments/assets/09baa4a7-f6ec-4068-af34-3b01d09c56f2" />
<img width="1455" alt="Screenshot 2025-06-19 at 5 30 46 PM" src="https://github.com/user-attachments/assets/1b4b4a68-d346-4a87-a172-dcb369958d31" />
