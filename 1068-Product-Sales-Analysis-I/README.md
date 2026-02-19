# 1068. Product Sales Analysis I

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/product-sales-analysis-i/description/)

---

## Problem (brief)

- **Sales:** `sale_id`, `product_id`, `year`, `quantity`, `price` — (sale_id, year) PK; `product_id` → Product.
- **Product:** `product_id` (PK), `product_name`.
- **Task:** For each sale, report `product_name`, `year`, and `price`.

---

## Example

Sales: sale_id 1→product 100 (2008, 5000), 2→100 (2009, 5000), 7→200 (2011, 9000). Product: 100→Nokia, 200→Apple.

**Output:**

| product_name | year | price |
|--------------|------|-------|
| Nokia        | 2008 | 5000  |
| Nokia        | 2009 | 5000  |
| Apple        | 2011 | 9000  |

---

## Idea

`JOIN` Sales and Product on `product_id`; `SELECT product_name, year, price`. One row per sale.
