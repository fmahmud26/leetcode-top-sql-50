# 1581. Customer Who Visited but Did Not Make Any Transactions

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/)

---

## Problem (brief)

- **Visits:** `visit_id` (unique), `customer_id` — who visited the mall.
- **Transactions:** `transaction_id` (unique), `visit_id`, `amount` — transactions during a visit.
- **Task:** For each customer, report how many visits they made **without** any transaction. Output `customer_id` and that count (`count_no_trans`).

---

## Example

Visits 4, 6, 7, 8 have no rows in Transactions. Customer 54 has visit_id 5 (with transactions), 7, 8 (no transactions) → 2 no-trans visits. Customers 30 and 96 each have 1 no-trans visit.

**Output:** (54, 2), (30, 1), (96, 1)

---

## Idea

1. **LEFT JOIN** Visits with Transactions on `visit_id` so every visit is kept; visits with no transaction get `NULL` for transaction columns.
2. **WHERE** `transaction_id IS NULL` to keep only “visited but no transaction” rows.
3. **GROUP BY** `customer_id` and **COUNT(*)** to get the number of such visits per customer.
