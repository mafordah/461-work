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
            <asp:label ID="txtLogin" runat="server"></asp:label>
            <br />
            Username
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            &nbsp;<br />
            <br />
            Password
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
          
            <asp:RadioButton ID="Yes" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" />
            <br />
           
            <asp:RadioButton ID="No" runat="server" />
            <br />
          
            <asp:RadioButton ID="Maybe" runat="server" OnCheckedChanged="RadioButton3_CheckedChanged" />
            <br />
            <br />
            <asp:Label ID="lblRadio" runat="server"></asp:Label>
            <asp:Button ID="submitRadio" runat="server" Text="Button" OnClick="submitRadio_Click" />
            <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" style="margin-bottom: 0px" />

            <asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="Submit" />

        </div>
    </form>
</body>
</html>
