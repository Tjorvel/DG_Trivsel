<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trivselförslag</title>
    <%--JavaScript--%>
    <script src="assets/javascript/jquery/jquery.1.11.2.js"></script>
    <script src="assets/javascript/main.js"></script>
    <%--CSS--%>
    <link rel="stylesheet" href="assets/css/main.css"/>
    <link rel="stylesheet" href="assets/css/StyleSheet.css"/>
    <link rel="stylesheet" href="assets/css/normalize.css"/>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,100italic,300italic,400italic,700italic' rel='stylesheet' type='text/css'/>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1"/>
</head>
<body>
    <div id="body">
    <div id="content_wrapper">
        <div id="header_wrapper">
            <h1>Trivselförslag</h1>
        </div>
        <div id="wrapper">
            <div id="pre_wrapper"><h3>Ge förslag på vad som kan förbättras!</h3></div>
            <ul>
                <li><input type="text" id="input_name" placeholder="Namn (valfritt):"/><%--<div class="dg_picture"></div>--%></li>
                <li><textarea id="input_suggest" placeholder="Förslag:"></textarea></li>
                <li><input id="button_send" type="submit" value="skicka" class="button" onclick="Main.sendEmail()" /><div id="loading"></div><div class="dg_picture"></div><input id="label" type="text" readonly="readonly"/></li>
            </ul>                
        </div>
        <div id="footer_wrapper"></div>
    </div>
    </div>
</body>
</html>
