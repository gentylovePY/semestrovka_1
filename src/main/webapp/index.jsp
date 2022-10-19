<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    <%
        String name = (String) session.getAttribute("username");
    %>
        <h1>Chat application</h1>
    <h3 id="username_input" ><%=name%></h3>
        <div id="output"></div>
        <input id="message_input" type="text">
        <button onclick="send()">Send message</button>
            <script src="js/websocket.js"></script>
    </body>
</html>
