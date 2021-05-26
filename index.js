const express = require('express');

const PORT = 3000;
const HOST = '0.0.0.0';

const app = express();

app.get('/', (req, res) => {
  res.send('Hello Jenkins');
});

app.get('/test', (req, res) => {
  res.send('Test jenkins auto pull 2');
});

app.listen(PORT, () => {
  console.log(`App listening at http://${HOST}:${PORT}`);
});
