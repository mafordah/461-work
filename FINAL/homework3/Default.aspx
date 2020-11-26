<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="homework3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Redline Apparel Wholesale Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./final.css" type="text/css" />

</head>
<body>
    <form id="formLogin" runat="server">
        <div class="login-form">

            <br />
            <div class="form-item center">
                <img src="/Images/redLineLogo.png" alt="Redline Apparel Logo" height="75" />
            </div>
            <br />
            <asp:Label ID="lblEmail" runat="server">Email</asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="*Email is a required field"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="*Invalid email"
                ForeColor="Red"
                ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$">
            </asp:RegularExpressionValidator>

            <asp:Label ID="lblPassword" runat="server">Password</asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="*Password is a required field"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:Label ID="lblInvalid" class="center" style="color:red" runat="server"> </asp:Label>
            <br />
            <br />

            <div class="center">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="Submit" />
            </div>
            <div class="center">
                <p><a href="./Register.aspx">Register</a></p>
            </div>

        </div>
    </form>
</body>
</html>
