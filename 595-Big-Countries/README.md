# 595. Big Countries

**Difficulty:** Easy  
**Link:** [LeetCode](https://leetcode.com/problems/big-countries/description/)

---

## Problem (brief)

- **Table:** `World` with columns `name`, `continent`, `area`, `population`, `gdp`.
- A country is **big** if:
  - its `area >= 3000000`, **or**
  - its `population >= 25000000`.
- **Task:** Return the `name`, `population`, and `area` of all **big** countries.

---

## Example

| name        | continent | area    | population | gdp          |
|------------|-----------|---------|------------|--------------|
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |

**Output (name, population, area):**

| name        | population | area    |
|------------|------------|---------|
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |

---

## Idea

- Use a `SELECT` on `World` and return only `name`, `population`, `area`.
- Filter rows where **either**:
  - `area >= 3000000` **OR**
  - `population >= 25000000`.

So the core condition is:

```sql
WHERE area >= 3000000
   OR population >= 25000000
```

