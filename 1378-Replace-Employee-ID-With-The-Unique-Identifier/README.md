# 1378. Replace Employee ID With The Unique Identifier

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/)

---

## Problem (brief)

- **Employees:** `id` (PK), `name` — every employee.
- **EmployeeUNI:** `id`, `unique_id` — (id, unique_id) is PK; only some employees have a row here.
- **Task:** For each employee, show their `unique_id` and `name`. If they have no row in EmployeeUNI, show `null` for `unique_id`.

---

## Example

**Employees:** (1, Alice), (7, Bob), (11, Meir), (90, Winston), (3, Jonathan)  
**EmployeeUNI:** (3, 1), (11, 2), (90, 3)

**Output:** (null, Alice), (null, Bob), (2, Meir), (3, Winston), (1, Jonathan)

---

## Idea

Use a **LEFT JOIN**: start from `Employees` (to keep every employee) and left join `EmployeeUNI` on `id`. Employees without a match get `NULL` for `unique_id`. Select `unique_id` and `name`.
