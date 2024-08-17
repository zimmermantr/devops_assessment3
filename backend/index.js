require("dotenv").config(); // added to use env variables
const express = require("express");
const { Pool, Client } = require("pg");
const app = express();
const port = process.env.BACK_PORT; // changed to use env variable

const pool = new Pool({
  connectionString: process.env.CONNECTION_STRING, // changed to use env variable
});

// Added a new endpoint for testing the health of the backend
app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

app.get("/data", function (req, res) {
  pool.query("SELECT movie, hero from movie_hero", [], (err, result) => {
    if (err) {
      return res.status(405).jsonp({
        error: err,
      });
    }

    return res.status(200).jsonp({
      data: result.rows,
    });
  });
});

app.listen(port, () =>
  console.log(`Backend rest api listening on port ${port}!`)
);
