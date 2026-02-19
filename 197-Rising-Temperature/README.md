# 197. Rising Temperature

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/rising-temperature/description/)

---

## Problem (brief)

- **Table:** `Weather` — `id` (unique), `recordDate` (date, unique per row), `temperature`.
- **Task:** Find all dates' `id` where the temperature is **higher** than the previous day (yesterday). Return the result in any order.

---

## Example

| id | recordDate  | temperature |
|----|--------------|-------------|
| 1  | 2015-01-01   | 10          |
| 2  | 2015-01-02   | 25          |
| 3  | 2015-01-03   | 20          |
| 4  | 2015-01-04   | 30          |

**Output:** `2`, `4`

*(2015-01-02: 25 > 10; 2015-01-04: 30 > 20.)*

---

## Idea

Self-join `Weather`: one alias for "today", one for "yesterday". Join on `today.recordDate = yesterday.recordDate + INTERVAL '1 day'`. Filter `WHERE today.temperature > yesterday.temperature`, then `SELECT today.id`.
