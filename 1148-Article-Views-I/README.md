# 1148. Article Views I

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/article-views-i/description/)

---

## Problem (brief)

- **Table:** `Views` with columns `article_id`, `author_id`, `viewer_id`, `view_date`.
- Each row = one view of an article by some viewer on some date.
- If `author_id = viewer_id`, it means the author viewed **their own** article.
- **Task:** Find all authors who viewed **at least one** of their own articles.
- Return a single column named `id`, sorted in ascending order, with no duplicates.

---

## Example

| article_id | author_id | viewer_id | view_date  |
|-----------|-----------|-----------|------------|
| 1         | 3         | 5         | 2019-08-01 |
| 1         | 3         | 6         | 2019-08-02 |
| 2         | 7         | 7         | 2019-08-01 |
| 2         | 7         | 6         | 2019-08-02 |
| 4         | 7         | 1         | 2019-07-22 |
| 3         | 4         | 4         | 2019-07-21 |
| 3         | 4         | 4         | 2019-07-21 |

**Output:**

| id |
|----|
| 4  |
| 7  |

Authors `4` and `7` appear in rows where `author_id = viewer_id`, meaning they viewed their own articles.

---

## Idea

- We only care about rows where `author_id = viewer_id`.
- From those rows, collect unique `author_id` values, rename the column to `id`, and sort ascending.
