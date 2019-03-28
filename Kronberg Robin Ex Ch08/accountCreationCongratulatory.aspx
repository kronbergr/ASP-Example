<%@ Page Language="VB" AutoEventWireup="false" CodeFile="accountCreationCongratulatory.aspx.vb" Inherits="accountCreationCongratulatory" %>
<!--Kronberg Robin Ex Ch. 8-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kronberg Robin Congratulatory Page</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h2>Congratulations On Your New Account!</h2>
    <h3><asp:Label ID="lblSiteName" runat="server" Text="Label"></asp:Label></h3>

    <a href="Default.aspx"">Login</a>
    <p>Your new account has been created!</p>
    <div><label for="lblFirstName">Congratulations, </label>
        <asp:Label ID="lblFirstName" runat="server" Text=""></asp:Label>!</div>

    <div><label for="lblUserName">Your User ID</label><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></div>

    <div><label for="lblUserPassword">Your Password</label><asp:Label ID="lblUserPassword" runat="server" Text=""></asp:Label></div>

    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
