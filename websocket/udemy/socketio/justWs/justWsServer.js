const http = require("http");
const websocket = require("ws");

// CREATE THE SERVER
const server = http.createServer((req, res) => {
    res.end("I am connected");
});

// INSTANTIATE THE WEBSOCKET OF THE SERVER
const wss = new websocket.WebSocketServer({
    server,
});

wss.on("headers", (headers, req) => {
    console.log(headers);
});

// EVENT WHEN A CLIENT CONNECTS ON THE SERVER
wss.on("connection", (ws, req) => {
    ws.send("Welcone to the websocket server");
    ws.on("message", (data) => {
        console.log(data.toString());
    });
});

server.listen(8000);
