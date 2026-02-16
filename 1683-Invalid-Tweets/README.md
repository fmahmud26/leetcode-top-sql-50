# 1683. Invalid Tweets

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/invalid-tweets/description/)

---

## Problem (brief)

- **Table:** `Tweets` with columns `tweet_id`, `content`.
- A tweet is **invalid** if the number of characters in `content` is **strictly greater than 15**.
- **Task:** Return the IDs (`tweet_id`) of all invalid tweets.

---

## Example

| tweet_id | content                           |
|---------|-----------------------------------|
| 1       | Let us Code                       |
| 2       | More than fifteen chars are here! |

**Output:**

| tweet_id |
|---------|
| 2       |

- Tweet 1 has length 11 → valid.  
- Tweet 2 has length 33 → invalid → included.

---

## Idea

- Use a string length function (`LENGTH` in PostgreSQL) on `content`.
- Keep rows where that length is **> 15**, then return `tweet_id`.
