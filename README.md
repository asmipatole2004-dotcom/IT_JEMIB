# IT_JEMIB
Autumn 2026 IT assessment: Python functions, a to-do list and registration form in HTML/CSS/JavaScript, and SQL queries for a library database.

# IT & BI Assessment – Autumn 2026

Solutions to the three-part assessment: programming, web development and SQL.

## Structure
- `1_python/` – `battagliaSomme(numbers)` and `isComplex(password)`
- `2_web/` – to-do list (`index.html`, `script.js`) and registration form
  with password validation (`registration.html`, `register.js`), styled by `style.css`
- `3_sql/` – six queries on the library database (MySQL syntax)

## Approach
- **Python:** `battagliaSomme` sums even and odd numbers separately and returns
  the absolute difference. `isComplex` checks each rule on its own: length,
  digit, lowercase, uppercase and special character.
- **Web:** plain JavaScript with no libraries. Clicking a task marks it as done.
  The registration form blocks submission and shows a message if the password
  isn't complex enough.
- **SQL:** `LEFT JOIN` is used for publishers so those with no books still appear.

## Run
Open `index.html` or `registration.html` in a browser.
