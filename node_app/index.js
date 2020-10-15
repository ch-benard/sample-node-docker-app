const express = require('express');
//const dotenv = require('dotenv').config();

const app = express();

app.get('/', (req, res) => {
	res.send(process.env.TEST);
});

const port = process.env.PORT

app.listen(port, function () {
  console.log(`Node app listening on port ${port}!`);
})
