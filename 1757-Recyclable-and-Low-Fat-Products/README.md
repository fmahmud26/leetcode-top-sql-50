# 1757. Recyclable and Low Fat Products

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/recyclable-and-low-fat-products/description/)

---

## Problem (brief)

- **Table:** `Products` — `product_id`, `low_fats`, `recyclable` (each `'Y'` or `'N'`).
- **Task:** Return `product_id` for every product that is **both** low fat and recyclable.

---

## Example

| product_id | low_fats | recyclable |
|------------|----------|------------|
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

**Output:** `1`, `3`

---

## Idea

`WHERE low_fats = 'Y' AND recyclable = 'Y'`, then `SELECT product_id`.
