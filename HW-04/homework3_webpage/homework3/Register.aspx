<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="homework3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" href="./homework3.css" type="text/css" />

</head>
<body>
    <h1>Griz eSports</h1>
    <div class="form">

        <form id="formRegistration" runat="server">

            <br />
            <h2>Registration</h2>
            <br />
            <br />
            First Name
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            &nbsp;Last Name
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <br />
            <br />
            Gamer Tag
        <asp:TextBox ID="txtGamerTag" runat="server"></asp:TextBox>
            <br />
            <p>
                Address
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </p>
            <p>
                City
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </p>
            <p>
                State
            </p>
            <p>
            <asp:TextBox ID="txtState" runat="server" Width="56px"></asp:TextBox>
                &nbsp;</p>
            <p>
                Zip Code<asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
            &nbsp;</p>
            <p>
                &nbsp;
            </p>
            <p>
                Phone
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                Email
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </p>
            <p>
                Password
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </p>
            <p>
                Comfirm Password
            <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
            </p>
            <p>
                &nbsp;
            </p>
            <p>
                Would you like to recieve emails from us?
            <asp:RadioButton ID="btnEmailsYes" runat="server" Text="Yes" />
                &nbsp;<asp:RadioButton ID="btnEmailsNo" runat="server" Text="No" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Button ID="btnRegister" runat="server" Text="Register" />
            </p>
            <p>
                <br />
                <asp:Button ID="btnLogin" Text="Login" />
            </p>

        </form>
    </div>
</body>
</html>
