const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());
app.use(express.static('public'));

let tasks = [];  // In-memory storage

// API endpoints
app.get('/tasks', (req, res) => res.json(tasks));
app.post('/tasks', (req, res) => {
  tasks.push(req.body.task);
  res.json({ success: true });
});
app.delete('/tasks/:index', (req, res) => {
  tasks.splice(req.params.index, 1);
  res.json({ success: true });
});

app.listen(port, () => console.log(`To-do app running on port ${port}`));
