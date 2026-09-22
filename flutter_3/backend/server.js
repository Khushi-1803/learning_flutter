const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();

app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "MySQL@1504",
    database: "flutter_app"
});

db.connect((err) => {
    if (err) {

        console.log("Connection Failed");
        console.log(err);
        return;
    }

    console.log("MySQL connected");
});

app.post("/users", (req, res) => {
    const { name } = req.body;

    const sql = "INSERT INTO users (name) VALUES (?)";

    db.query(sql, [name], (err, result) => {
        if (err) {
            return res.status(500).json({
                error: err.message
            });
        }

        res.json({
            message: "User created",
            id: result.insertId,
            name: name
        });
    });
});

app.listen(5000, () => {
    console.log("Server running on port 5000");
});