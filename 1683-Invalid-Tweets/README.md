# 1683. Invalid Tweets

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/invalid-tweets/description/)

---

## Problem (brief)

- **Table:** `Tweets` — `tweet_id`, `content`.
- **Invalid:** `content` has strictly more than 15 characters.
- **Task:** Return `tweet_id` for all invalid tweets.

---

## Example

| tweet_id | content                           |
|----------|-----------------------------------|
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |

**Output:** `tweet_id` = 2 (length 33 > 15).

---

## Idea

`WHERE LENGTH(content) > 15`, then `SELECT tweet_id`.
