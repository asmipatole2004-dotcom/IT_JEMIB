# IT & BI Assessment – Autumn 2026

Solutions to the three-part assessment: programming, web development and SQL.

## Files
- `battagliaSomme.py` – `battagliaSomme(numbers)` and `isComplex(password)`
- `index.html`, `script.js` – to-do list
- `registration.html`, `register.js` – registration form with password validation
- `style.css` – shared styles
- `library_queries.sql` – six SQL queries (MySQL syntax)

## Approach
- **Python:** `battagliaSomme` sums even and odd numbers separately and returns the absolute difference. `isComplex` checks each rule on its own: length, digit, lowercase, uppercase and special character.
- **Web:** plain JavaScript with no libraries. Clicking a task marks it as done. The registration form blocks submission and shows a message if the password isn't complex enough.
- **SQL:** `LEFT JOIN` is used for publishers so those with no books still appear.

## Run
Open `index.html` or `registration.html` in a browser.
