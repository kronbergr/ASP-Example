<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<!--Kronberg Robin Ex. Ch 8-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title>Kronberg Robin Login Page</title>
</head>
    
<body>
    <h2>Login Page</h2>
    <h3>
        <asp:Label ID="lblSiteName" runat="server" Text="Label"></asp:Label></h3>

    <form id="form1" runat="server">
    

        <div><label for="txtUsername">User Name:  </label><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></div>
        <div><label for="txtPassword">Password:  </label><asp:TextBox ID="txtPassword" runat="server" ></asp:TextBox></div>
       <div> <asp:Button ID="btnLogin" runat="server" Text="Login" /></div>
            <div><asp:Button ID="btnAccountCreation" runat="server" Text="Create An Account" /></div>
        <asp:Label ID="lblMajorError" CssClass="error" runat="server" Text="There has been a major error"></asp:Label>
    
    </form>
    <a href="Navigation.aspx">Navigation</a>
</body>
</html>
