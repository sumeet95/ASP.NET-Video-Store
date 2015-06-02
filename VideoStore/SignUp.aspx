<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUpaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/LoginStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <h1>Sign Up</h1>

        <div class="small">
        Username
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUsername" runat="server" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
        <p>
            Password
            <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPass" runat="server" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
            Re-Enter Password
            <asp:TextBox ID="txtRePass" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cvPass" ControlToCompare="txtRePass" ControlToValidate="txtPass" Type="String" Operator="Equal" runat="server" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
        <p>
            Email Address
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ControlToValidate ="txtEmail" runat="server" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" Display="Dynamic" ControlToValidate="txtEmail" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Invalid Email" ForeColor="Red"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Button CssClass="button" ID="btnSubmit" runat="server" Text="Sign Up" OnClick="btnSubmit_Click" />
        </p>
            </div>
        </div>
    </form>
</body>
</html>
