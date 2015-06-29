<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trivselförslag</title>
    <%--JavaScript--%>
    <script src="assets/javascript/main.js"></script>
    <%--CSS--%>
    <link rel="stylesheet" href="assets/css/main.css"/>
    <link rel="stylesheet" href="assets/css/normalize.css"/>
</head>
<body>
    <div id="content_wrapper">
        <div id="header_wrapper">
            <h1>Trivselförslag</h1>
            <h3>Här kan ni ge förslag på vad som kan förbättras</h3>
        </div>
        <div id="wrapper">
            <ul>
                <li><h4>Namn (valfritt): </h4></li>
                <li><input type="text" id="input_name"/></li>
                <li><h4>Förslag: </h4></li>
                <li><textarea id="input_suggest"></textarea></li>
            </ul>                
        </div>
        <div id="footer_wrapper"></div>
    </div>
</body>
</html>
