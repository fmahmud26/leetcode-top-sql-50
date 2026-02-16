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

**Output names:** `Will`, `Jane`, `Bill`, `Zack`

Reason:
- Exclude customers referred by `id = 2` (`Alex`, `Mark`).
- Include all others (either no referee or referee id not equal to 2).

---

## Idea

Use a `WHERE` filter on `referee_id`:

- Keep rows where `referee_id IS NULL` (no referee),  
  **or** `referee_id <> 2` (referred by someone other than customer 2),  
then select the `name` column.

