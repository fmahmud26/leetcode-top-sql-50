# 1378. Replace Employee ID With The Unique Identifier

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/)

---

## Problem (brief)

- **Employees:** `id` (PK), `name` — all employees.
- **EmployeeUNI:** `id`, `unique_id` — (id, unique_id) is PK; only some employees appear here.
- **Task:** For each employee, show `unique_id` and `name`; use `null` for `unique_id` if none in EmployeeUNI.

---

## Example

Employees: (1, Alice), (7, Bob), (11, Meir), (90, Winston), (3, Jonathan). EmployeeUNI: (3, 1), (11, 2), (90, 3).

**Output:**

| unique_id | name     |
|-----------|----------|
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |

---

## Idea

`LEFT JOIN` Employees to EmployeeUNI on `id` so every employee is kept; no match → `unique_id` is NULL. Select `unique_id`, `name`.
