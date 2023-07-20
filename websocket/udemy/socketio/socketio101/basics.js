// 3RD PARTY MODULE FROM NPM
const express = require("express");
const app = express();
const socketio = require("socket.io");

app.use(express.static(__dirname + "/public"));

const expressServer = app.listen(8000);
const io = socketio(expressServer); // WEBSOCKET SERVER

io.on("connection", (socket) => {
    console.log(socket.id, "has connected");
    // IN WS WE USE "SEND" METHOD
    // IN SCOKET.IO WE USE THE "EMIT" METHOD
    socket.emit("messageFromServer", {
        data: "Welcome to the socket server",
    });
    socket.on("messageFromClient", (data) => {
        console.log(data);
    });
});
