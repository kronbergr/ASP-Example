<%@ Page Language="VB" AutoEventWireup="false" CodeFile="mathCalculations.aspx.vb" Inherits="mathCalculations" %>
<!--Kronberg Robin Ex. Ch 8-->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title>Kronberg Robin Math Calculations</title>
</head>
<body>
    <h2>Math Calculations</h2>
    <h3><asp:Label ID="lblSiteName" runat="server" Text="Label"></asp:Label></h3>
    <form id="form1" runat="server">
    
    <a href="Navigation.aspx">Navigation</a>
        <h3>Enter two numbers greater than zero.  </h3>
        <p>If you choose to do Money Math, the first number you enter will be the number of pennies you wish to multiply, and the second number will be the number of days over which you would like those pennies to multiply.  Each day, your number of pennies will double.  For example: If you enter 1 for "Number of Pennies" and 5 for "Number of Days", on the first day you will have 1 penny, on the second you will have 2, on the third you will have 4, on the fourth you will have 8, and on the fifth you will have 16.  
        </p>
        <p>If you choose to do Funny Math, the first number you enter will be the number you wish to multiply, and the second number will be the number by which you would like the first number to be multiplied.  For example: If you enter 2 for "Multiply This" and 4 for "By This", your answer will be 8.  </p>
      <div> <asp:Label ID="lblFirstNumber" runat="server" Text="First Number" AssociatedControlID="txtFirstNumber"></asp:Label>
          <asp:TextBox ID="txtFirstNumber" runat="server"></asp:TextBox></div>
      <div> <asp:Label ID="lblSecondNumber" runat="server" Text="Second Number" AssociatedControlID="txtSecondNumber"></asp:Label>
          <asp:TextBox ID="txtSecondNumber" runat="server"></asp:TextBox></div>

        <h3>Which calculation would you like to perform?</h3>
        
      <div>  <label for="radMoneyMath">Money Math</label><asp:RadioButton ID="radMoneyMath" runat="server" GroupName="grpMathCalcs" Checked="True" cssclass="radio" /></div>
        <div><label for="radFunnyMath">Funny Math</label><asp:RadioButton ID="radFunnyMath" runat="server" GroupName="grpMathCalcs" cssclass="radio"/></div>
        <div><asp:Label ID="lblError" runat="server" Text="" cssclass="error"></asp:Label></div>
     <div>  <asp:Button ID="btnCalculate" runat="server" Text="Calculate" /></div> 

       <div> <label for="lblAnswer">Answer:  </label> <asp:Label ID="lblAnswer" runat="server" Text=""></asp:Label></div>
        
   
    </form>
</body>
</html>
