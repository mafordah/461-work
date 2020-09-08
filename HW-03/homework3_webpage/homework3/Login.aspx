<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="homework3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="./homework3.css" type="text/css" />

</head>
<body>
    <h1>Griz eSports</h1>
    <form id="formLogin" runat="server">
        <div class="form">

            <br />
            <h2>Registration</h2>
            <br />
            <br />
            Username
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            &nbsp;<br />
            <br />
            Password
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Login" />
            <br />
            <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" />

        </div>
    </form>
</body>
</html>
