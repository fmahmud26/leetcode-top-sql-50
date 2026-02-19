# 1581. Customer Who Visited but Did Not Make Any Transactions

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/)

---

## Problem (brief)

- **Visits:** `visit_id` (unique), `customer_id` — each mall visit.
- **Transactions:** `transaction_id` (unique), `visit_id`, `amount` — transactions per visit.
- **Task:** For each customer, count visits where they made **no** transaction. Output `customer_id` and `count_no_trans`.

---

## Example

Visits 4, 6, 7, 8 have no transaction. Customer 54: visits 7 and 8 are no-trans → 2; customers 30 and 96: 1 each.

**Output:**

| customer_id | count_no_trans |
|-------------|----------------|
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |

---

## Idea

`LEFT JOIN` Visits to Transactions on `visit_id`; `WHERE transaction_id IS NULL` keeps only no-trans visits; `GROUP BY customer_id` and `COUNT(*)` as `count_no_trans`.
