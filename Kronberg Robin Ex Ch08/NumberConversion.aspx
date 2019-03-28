<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NumberConversion.aspx.vb" Inherits="NumberConversion" %>
<!--Kronberg Robin Ex Ch. 8-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title>Kronberg Robin Ex Ch06-02</title>

</head>
<body>

    <h2>Number Conversion</h2>
    <h3><asp:Label ID="lblSiteName" runat="server" Text="Label"></asp:Label></h3>
    <form id="form1" runat="server">
    
       <div><label for="txtInputDec">Enter a Number:  </label> <asp:TextBox ID="txtInputDec" runat="server"></asp:TextBox></div>
        <div><label for="chkEightDig">Display answer espressed as 8 digits?</label><asp:CheckBox ID="chkEightDig" runat="server" /></div>
        <div><asp:Label ID="lblConversionError" runat="server" Text="" CssClass="error"></asp:Label></div>
        <div><asp:Button ID="btnBinaryCalculate" runat="server" Text="Calculate" /></div>
        <div><label for="lblBinaryOut">Converted Number:  </label><asp:Label ID="lblBinaryOut" runat="server" Text=""></asp:Label></div>
        <div>
            <asp:Label ID="conversionError" runat="server" Text="" CssClass="error"></asp:Label></div>
    
        
    </form>
    <a href="Navigation.aspx">Navigation</a>
</body>
</html>
