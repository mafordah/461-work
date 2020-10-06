<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="homework3.WebForm1" %>

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
            <asp:Label ID="lblPhone" runat="server">Phone Number</asp:Label>
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server"
                ControlToValidate="txtPhone"
                ErrorMessage="*Phone Number is a required field"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server"
                ControlToValidate="txtPhone"
                ErrorMessage="*Invalid phone number"
                ForeColor="Red"
                ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$">
            </asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="lblShippingStreetName" runat="server">Shipping Address</asp:Label>
            <asp:TextBox ID="txtShippingStreetName1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtShippingStreetName2" runat="server"></asp:TextBox>
            <br />
            <br />
            <div class="form-group">
                <div class="form-group-item city">
                    <asp:Label ID="lblShippingCity" runat="server">City</asp:Label>
                    <asp:TextBox ID="txtShippingCity" runat="server"></asp:TextBox>
                </div>
                <div class="form-group-item state">
                    <asp:Label ID="lblShippingState" runat="server">State</asp:Label>
                    <asp:DropDownList ID="ddShippingState" runat="server" Width="100%">
                        <asp:ListItem Value="AL">Alabama</asp:ListItem>
                        <asp:ListItem Value="AK">Alaska</asp:ListItem>
                        <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                        <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                        <asp:ListItem Value="CA">California</asp:ListItem>
                        <asp:ListItem Value="CO">Colorado</asp:ListItem>
                        <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                        <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                        <asp:ListItem Value="DE">Delaware</asp:ListItem>
                        <asp:ListItem Value="FL">Florida</asp:ListItem>
                        <asp:ListItem Value="GA">Georgia</asp:ListItem>
                        <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                        <asp:ListItem Value="ID">Idaho</asp:ListItem>
                        <asp:ListItem Value="IL">Illinois</asp:ListItem>
                        <asp:ListItem Value="IN">Indiana</asp:ListItem>
                        <asp:ListItem Value="IA">Iowa</asp:ListItem>
                        <asp:ListItem Value="KS">Kansas</asp:ListItem>
                        <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                        <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                        <asp:ListItem Value="ME">Maine</asp:ListItem>
                        <asp:ListItem Value="MD">Maryland</asp:ListItem>
                        <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                        <asp:ListItem Value="MI">Michigan</asp:ListItem>
                        <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                        <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                        <asp:ListItem Value="MO">Missouri</asp:ListItem>
                        <asp:ListItem Value="MT">Montana</asp:ListItem>
                        <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                        <asp:ListItem Value="NV">Nevada</asp:ListItem>
                        <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                        <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                        <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                        <asp:ListItem Value="NY">New York</asp:ListItem>
                        <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                        <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                        <asp:ListItem Value="OH">Ohio</asp:ListItem>
                        <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                        <asp:ListItem Value="OR">Oregon</asp:ListItem>
                        <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                        <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                        <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                        <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                        <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                        <asp:ListItem Value="TX">Texas</asp:ListItem>
                        <asp:ListItem Value="UT">Utah</asp:ListItem>
                        <asp:ListItem Value="VT">Vermont</asp:ListItem>
                        <asp:ListItem Value="VA">Virginia</asp:ListItem>
                        <asp:ListItem Value="WA">Washington</asp:ListItem>
                        <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                        <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                        <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group-item zip">
                    <asp:Label ID="lblShippingZip" runat="server">Zip Code</asp:Label>
                    <asp:TextBox ID="txtShippingZip" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <asp:Label ID="lblBillingStreetName" runat="server">Billing Address:</asp:Label>
            <asp:Label ID="lblBillingStreetNameSame" runat="server">Same as Shipping Address</asp:Label>
            <asp:CheckBox ID="chBillingStreetNameSame" runat="server" Checked="True" />
            <asp:TextBox ID="txtBillingStreetName1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtBillingStreetName2" runat="server"></asp:TextBox>
            <br />
            <br />
            <div class="form-group">
                <div class="form-group-item city">
                    <asp:Label ID="lblBillingCity" runat="server">City</asp:Label>
                    <asp:TextBox ID="txtBillingCity" runat="server"></asp:TextBox>
                </div>
                <div class="form-group-item state">
                    <asp:Label ID="lblBillingState" runat="server">State</asp:Label>
                    <asp:DropDownList ID="ddBillingState" runat="server" Width="100%">
                        <asp:ListItem Value="AL">Alabama</asp:ListItem>
                        <asp:ListItem Value="AK">Alaska</asp:ListItem>
                        <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                        <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                        <asp:ListItem Value="CA">California</asp:ListItem>
                        <asp:ListItem Value="CO">Colorado</asp:ListItem>
                        <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                        <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                        <asp:ListItem Value="DE">Delaware</asp:ListItem>
                        <asp:ListItem Value="FL">Florida</asp:ListItem>
                        <asp:ListItem Value="GA">Georgia</asp:ListItem>
                        <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                        <asp:ListItem Value="ID">Idaho</asp:ListItem>
                        <asp:ListItem Value="IL">Illinois</asp:ListItem>
                        <asp:ListItem Value="IN">Indiana</asp:ListItem>
                        <asp:ListItem Value="IA">Iowa</asp:ListItem>
                        <asp:ListItem Value="KS">Kansas</asp:ListItem>
                        <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                        <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                        <asp:ListItem Value="ME">Maine</asp:ListItem>
                        <asp:ListItem Value="MD">Maryland</asp:ListItem>
                        <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                        <asp:ListItem Value="MI">Michigan</asp:ListItem>
                        <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                        <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                        <asp:ListItem Value="MO">Missouri</asp:ListItem>
                        <asp:ListItem Value="MT">Montana</asp:ListItem>
                        <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                        <asp:ListItem Value="NV">Nevada</asp:ListItem>
                        <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                        <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                        <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                        <asp:ListItem Value="NY">New York</asp:ListItem>
                        <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                        <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                        <asp:ListItem Value="OH">Ohio</asp:ListItem>
                        <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                        <asp:ListItem Value="OR">Oregon</asp:ListItem>
                        <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                        <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                        <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                        <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                        <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                        <asp:ListItem Value="TX">Texas</asp:ListItem>
                        <asp:ListItem Value="UT">Utah</asp:ListItem>
                        <asp:ListItem Value="VT">Vermont</asp:ListItem>
                        <asp:ListItem Value="VA">Virginia</asp:ListItem>
                        <asp:ListItem Value="WA">Washington</asp:ListItem>
                        <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                        <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                        <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group-item zip">
                    <asp:Label ID="lblBillingZip" runat="server">Zip Code</asp:Label>
                    <asp:TextBox ID="txtBillingZip" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />

            <asp:Label ID="lblConduct" runat="server">I have read and agreed to the terms and conditions</asp:Label>
            <asp:CheckBox ID="chConduct" runat="server" />
            <br />
            <br />
            <asp:Label ID="lblSubsribe" runat="server">I would like to subcribe to email communcation</asp:Label>
            <asp:CheckBox ID="chSubcribe" runat="server" Checked="True" />
            <br />
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
