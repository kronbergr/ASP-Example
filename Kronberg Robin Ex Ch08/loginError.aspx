<%@ Page Language="VB" AutoEventWireup="false" CodeFile="loginError.aspx.vb" Inherits="Default2" %>
<!--Kronberg Robin Ex. Ch 8-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title>Kronberg Robin Login Error</title>
</head>
<body>
  <h2>Login Error</h2>
    <h3><asp:Label ID="lblSiteName" runat="server" Text="Label"></asp:Label></h3>
    <p>There was a problem with your login information.  Please try again. </p>
    <a href="Default.aspx">Login Page</a>
</body>
</html>
