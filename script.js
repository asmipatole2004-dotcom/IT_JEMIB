function aggiungiTask() {
  const input = document.getElementById("taskInput");
  const text = input.value.trim();

  if (text === "") return;

  const li = document.createElement("li");
  li.textContent = text;

  // click a task to mark it as completed
  li.onclick = function () {
    li.classList.toggle("done");
  };

  document.getElementById("taskList").appendChild(li);
  input.value = "";
}