//importing modules
const e = require('express');
const express = require('express');
const http = require('http');
const mongoose = require('mongoose');

const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);

var io = require('socket.io')(server);

//client -> middleware -> server
//middleware
app.use(express.json());

var username = encodeURIComponent("Zer0-01");
var password = encodeURIComponent("Blackkuro01#");

const DB = `mongodb+srv://${username}:${password}@cluster0.0frs88j.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0`;

mongoose
    .connect(DB)
    .then(() => {
        console.log("Connection successful");
    }).catch((e) => {
        console.log(e);
    });

server.listen(port, '0.0.0.0', () => {
    console.log(`Server started and running on port ${port}`);
});