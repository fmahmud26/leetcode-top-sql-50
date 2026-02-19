# 1148. Article Views I

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/article-views-i/description/)

---

## Problem (brief)

- **Table:** `Views` — `article_id`, `author_id`, `viewer_id`, `view_date`. Each row is one view.
- **Task:** Find all authors who viewed at least one of their own articles (`author_id = viewer_id`). Return one column `id` (ascending, distinct).

---

## Example

| article_id | author_id | viewer_id | view_date  |
|------------|-----------|-----------|------------|
| 1          | 3         | 5         | 2019-08-01 |
| 2          | 7         | 7         | 2019-08-01 |
| 3          | 4         | 4         | 2019-07-21 |

**Output:**

| id |
|----|
| 4  |
| 7  |

---

## Idea

Filter `WHERE author_id = viewer_id`, then `SELECT DISTINCT author_id AS id` and `ORDER BY author_id ASC`.
