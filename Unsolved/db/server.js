//Define Dependecies
const express = require("express");
const mysql = require("mysql2")

//Data

//db connection
const db = mysql.createConnection ({
    user: "root",
    password: "Salem12",
    database: "movie_db",
    host: "127.0.0.1"
    },
    console.log('db connected')
    );

//APP/PORT
const app = express();
const PORT = process.env.PORT || 4000;

//Middleware
app.use(express.json());
app.use(express.urlencoded({extended: true}));

//Routes

//Start the server (APP) - Listener
//Start the server (APP) - Listener
app.listen(PORT, () => console.log(`The server is running @ http://localhost:${PORT}`));
console.log(`The server is running`);


