const express = require("express");
const app = express();
const api = require("./router/api");
const mongoose = require("mongoose");
const bodyParser = require('body-parser');
mongoose.connect(
    'mongodb://localhost:27017/Companies'
, {
    useNewUrlParser: true,
    useUnifiedTopology: true
});
app.set('view engine', 'ejs');
app.use(bodyParser.json());

app.use("/co", api);

app.listen(5000, function () {
  console.log("Server is Running on 'localhost:5000'...");
});