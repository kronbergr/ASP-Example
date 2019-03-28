<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Navigation.aspx.vb" Inherits="Navigation" %>
<!--Kronberg Robin Ex Ch. 8-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title>Kronberg Robin Navigation</title>
</head>
<body>
    <h2><label for="lblUserName">Welcome,</label><asp:Label ID="lblUserName" runat="server" Text="Label">  
</asp:Label>!</h2>

    <h3><asp:Label ID="lblSiteName" runat="server" Text="Label"></asp:Label></h3>
    <nav>
    <ul>
        <li><a href="Default.aspx">Logout</a></li>
        <li><a href="mathCalculations.aspx">Calculations</a></li>
        <li><a href="NumberConversion.aspx">Number Conversion</a></li>
        <li><a href="userAccountCreation.aspx">Create User Account</a></li>

    </ul>
    </nav>
</body>
</html>
