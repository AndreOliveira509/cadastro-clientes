var express = require("express");
var app = express();

app.set("view engine", "ejs");
app.set("views", "./app/views");

app.use("/static", express.static("./static"));

module.exports = function () {
    return app;
};
