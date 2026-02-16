# Recyclable and Low Fat Products

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/recyclable-and-low-fat-products/description/)

---

## Problem (brief)

- **Table:** `Products` with columns `product_id`, `low_fats`, `recyclable`.
- **Task:** Return the **product_id** of every product that is **both** low fat **and** recyclable.
- **Values:** `low_fats` and `recyclable` are `'Y'` or `'N'`.

---

## Example

| product_id | low_fats | recyclable |
|------------|----------|------------|
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

**Output:** `1`, `3` (only these two are both low fat and recyclable).

---

## Idea

Filter rows where `low_fats = 'Y'` **and** `recyclable = 'Y'`, then return `product_id`.  
Use a single `SELECT` with a `WHERE` and `AND`.
