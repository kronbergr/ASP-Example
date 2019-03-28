<%@ Page Language="VB" AutoEventWireup="false" CodeFile="userAccountCreation.aspx.vb" Inherits="userAccountCreation" %>
<!--Kronberg Robin Ex Ch. 8-->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kronberg Robin User Account Creation</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
     <h2>User Account Creation</h2>
    <h3>
        <asp:Label ID="lblSiteName" runat="server" Text="Label"></asp:Label></h3>
    <a href="Default.aspx">Login</a>
    <form id="form1" runat="server">
    
       <div> <label for="txtLastName">Last Name</label><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Last Name Required" ControlToValidate="txtLastName" CssClass="error" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>

       </div>


        <div><label for="txtFirstName">First Name</label><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First Name Required" ControlToValidate="txtFirstName" CssClass="error" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>

        </div>


        <div><label for="txtBirthDate">Birth Date</label><asp:TextBox ID="txtBirthDate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Birth Date Required" ControlToValidate="txtBirthDate" CssClass="error" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="birthDateCheck" runat="server" ErrorMessage="You must enter the date in a valid format! Example: 12/15/1992" Operator="DataTypeCheck" Type="Date" ControlToValidate="txtBirthDate" Display="None" SetFocusOnError="True"></asp:CompareValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Date must be between 01/01/1955 and 12/31/1995" Type="Date" ControlToValidate="txtBirthDate" MaximumValue="12/31/1995" MinimumValue="01/01/1955" Display="None" SetFocusOnError="True"></asp:RangeValidator>

        </div>


        <div><label for="txtUserID">User ID</label><asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="User ID Required" ControlToValidate="txtUserID" CssClass="error" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:CustomValidator ID="checkLength" runat="server" ErrorMessage="User ID must be at least 5 characters" Display="None" ControlToValidate="txtUserID" SetFocusOnError="True"></asp:CustomValidator>

        </div>


        <div><label for="txtPW">Password</label><asp:TextBox ID="txtPW" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password Required" ControlToValidate="txtPW" CssClass="error" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password must start with 2 uppercase letters, followed by any 1 of these symbols(- * =), followed by four numbers between 2 and 8" ControlToValidate="txtPW" CssClass="error" ValidationExpression="[A-Z]{2}(\*|-|=)[2-8]{4}" Display="None"></asp:RegularExpressionValidator>
        </div>


        <div><label for="txtConfirmPW">Confirm Password</label><asp:TextBox ID="txtConfirmPW" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Passwords Must Match" ControlToValidate="txtConfirmPW" CssClass="error" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:CompareValidator ID="comparePasswords" runat="server" ErrorMessage="Passwords Must Match" ControlToCompare="txtPW" ControlToValidate="txtConfirmPW" Display="None" SetFocusOnError="True"></asp:CompareValidator>

        </div>

        <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" />

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" />
    
    </form>
</body>
</html>
