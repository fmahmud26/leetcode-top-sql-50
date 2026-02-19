# 584. Find Customer Referee

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/find-customer-referee/description/)

---

## Problem (brief)

- **Table:** `Customer` with columns `id`, `name`, `referee_id`.
- `referee_id` is the id of the customer who referred this customer (or `NULL` if nobody did).
- **Task:** Return the **names** of customers who are:
  - referred by a customer with `id != 2`, **or**
  - **not referred** by anyone (`referee_id IS NULL`).

---

## Example

| id | name | referee_id |
|----|------|------------|
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |

**Output:** `Will`, `Jane`, `Bill`, `Zack` (exclude only those referred by customer 2: Alex, Mark).

---

## Idea

Keep rows where `referee_id IS NULL` or `referee_id != 2`; then `SELECT name`. Excludes only customers referred by id 2.
