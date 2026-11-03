function isComplex(password) {
  if (password.length < 6) return false;
  if (!/[0-9]/.test(password)) return false;
  if (!/[a-z]/.test(password)) return false;
  if (!/[A-Z]/.test(password)) return false;
  if (!/[^A-Za-z0-9]/.test(password)) return false;
  return true;
}

document.getElementById("registerForm").addEventListener("submit", function (event) {
  event.preventDefault(); // stops the page from reloading

  const password = document.getElementById("password").value;
  const message = document.getElementById("passwordMessage");

  if (!isComplex(password)) {
    message.textContent = "Password needs: 6+ characters, a number, a lowercase letter, an uppercase letter and a special character.";
    message.style.color = "red";
  } else {
    message.textContent = "Registration successful!";
    message.style.color = "lightgreen";
  }
});