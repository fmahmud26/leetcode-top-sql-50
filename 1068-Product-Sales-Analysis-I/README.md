# 1068. Product Sales Analysis I

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/product-sales-analysis-i/description/)

---

## Problem (brief)

- **Sales:** `sale_id`, `product_id`, `year`, `quantity`, `price` — (sale_id, year) is PK; `product_id` references Product.
- **Product:** `product_id` (PK), `product_name`.
- **Task:** For each row in Sales, report `product_name`, `year`, and `price`.

---

## Example

**Sales:** (1, 100, 2008, 10, 5000), (2, 100, 2009, 12, 5000), (7, 200, 2011, 15, 9000)  
**Product:** (100, Nokia), (200, Apple), (300, Samsung)

**Output:** (Nokia, 2008, 5000), (Nokia, 2009, 5000), (Apple, 2011, 9000)

---

## Idea

Join **Sales** with **Product** on `product_id` to get `product_name` for each sale. Select `product_name`, `year`, and `price`. An INNER JOIN is enough because every sale has a valid `product_id`.
