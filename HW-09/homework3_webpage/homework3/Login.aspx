<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="homework3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="./homework3.css" type="text/css" />

</head>
<body>
    <form id="formLogin" runat="server">
        <div class="form">

            <br />
            <h2>Welcome to Griz eSports</h2>
            <br />
            <asp:label ID="txtLogin" runat="server"></asp:label>
            <br />
            <asp:Label ID="lblUserName" runat="server">Password</asp:Label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <asp:Label ID="lblPassword" runat="server">Password</asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
          
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>

 
        </div>
    </form>
</body>
</html>
