<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="homework3.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Redline Apparel Wholesale Registration</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./final.css" type="text/css" />

</head>
<body>
    <div class="registration-form">
        <br />
        <h2 class="form-item">Create an Account</h2>
        <br />

        <form id="formRegistration" runat="server" class="form-scroll">
            <asp:Label ID="lblCompany" runat="server">Company</asp:Label>
            <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="txtLastName"
                ErrorMessage="*Company is a required field"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />

            <div class="form-group">
                <div class="form-group-item">

                    <asp:Label ID="lblFirstName" runat="server">First Name</asp:Label>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server"
                        ControlToValidate="txtFirstName"
                        ErrorMessage="*First name is a required field"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="form-group-item">
                    <asp:Label ID="lbllastName" runat="server">Last Name</asp:Label>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server"
                        ControlToValidate="txtLastName"
                        ErrorMessage="*Last name is a required field"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

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
            <br />
            <asp:Label ID="lblPassword" runat="server">Password</asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="*Password is a required field"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionPassword" runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="*Password must be at least 8 characters, contain at least 1 letter and 1 number"
                ForeColor="Red"
                ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$">
            </asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="lblConfirmPassword" runat="server">Confirm Password</asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server"
                ControlToValidate="txtConfirmPassword"
                ErrorMessage="*Please comfirm your password"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidatorComfirmPassword" runat="server"
                ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword"
                ErrorMessage="*Passwords do not match"
                ForeColor="Red">
            </asp:CompareValidator>
            <br />
            <br />
            

            <asp:Label ID="lblConduct" runat="server">I have read and agreed to the terms and conditions</asp:Label>
            <asp:CheckBox ID="chConduct" runat="server" />
            <br />
            <asp:CustomValidator ID="CustomValidatorConduct" runat="server"
                ErrorMessage="*Required"
                ForeColor="Red"
                onservervalidate= "ValidateConduct">
            </asp:CustomValidator>
            <br />
            <asp:Label ID="lblSubsribe" runat="server">I would like to subcribe to email communcation</asp:Label>
            <asp:CheckBox ID="chSubcribe" runat="server" Checked="True" />
            <br />
            <asp:Label ID="lblRegister" runat="server" Style="color: red"></asp:Label>
            <br />
            <div class="center">
                <asp:Button ID="btnRegister" input="submit" runat="server" Text="Register" CssClass="button" OnClick="Submit" />
            </div>
        </form>
        <div class="form-item center">
            <p>Already registered? <a href="Default.aspx">Login</a></p>
        </div>
    </div>
</body>
</html>
