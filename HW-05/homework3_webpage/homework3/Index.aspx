<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="homework3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./homework3.css" type="text/css" />

</head>
<body>
    <div class="form">
        <br />
        <h2 class="formItem">Welcome to Griz eSports</h2>
        <br />

        <form id="formRegistration" runat="server" class="form-scroll">
            <div class="form-group">
                <div class="form-group-item">

                    <asp:Label ID="lblFirstName" runat="server">First Name</asp:Label>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server"
                        ControlToValidate="txtFirstName"
                        ErrorMessage="*first name is a required field"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="form-group-item">
                    <asp:Label ID="lbllastName" runat="server">Last Name</asp:Label>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server"
                        ControlToValidate="txtLastName"
                        ErrorMessage="*last name is a required field"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <asp:Label ID="lblGamerTag" runat="server">Gamer Tag</asp:Label>
            <asp:TextBox ID="txtGamerTag" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="lblEmail" runat="server">Email</asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="*email is a required field"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="*invalid email"
                ForeColor="Red"
                ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$">
            </asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="lblPassword" runat="server">Password</asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblConfirmPassword" runat="server">Confirm Password</asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblPhone" runat="server">Phone Number</asp:Label>
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="*phone is a required field"
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server"
                ControlToValidate="txtPhone"
                ErrorMessage="*invalid phone number"
                ForeColor="Red"
                ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$">
            </asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="lblStreetName" runat="server">Address</asp:Label>
            <asp:TextBox ID="txtStreetName1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtStreetName2" runat="server"></asp:TextBox>
            <br />
            <br />
            <div class="form-group">
                <div class="form-group-item city">
                    <asp:Label ID="lblCity" runat="server">City</asp:Label>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </div>
                <div class="form-group-item state">
                    <asp:Label ID="lblState" runat="server">State</asp:Label>
                    <asp:DropDownList ID="ddState" runat="server" Width="100%">
                        <asp:ListItem Value="AL">AL</asp:ListItem>
                        <asp:ListItem Value="AK">AK</asp:ListItem>
                        <asp:ListItem Value="AZ">AZ</asp:ListItem>
                        <asp:ListItem Value="AR">AR</asp:ListItem>
                        <asp:ListItem Value="CA">CA</asp:ListItem>
                        <asp:ListItem Value="CO">CO</asp:ListItem>
                        <asp:ListItem Value="CT">CT</asp:ListItem>
                        <asp:ListItem Value="DC">DC</asp:ListItem>
                        <asp:ListItem Value="DE">DE</asp:ListItem>
                        <asp:ListItem Value="FL">FL</asp:ListItem>
                        <asp:ListItem Value="GA">GA</asp:ListItem>
                        <asp:ListItem Value="HI">HI</asp:ListItem>
                        <asp:ListItem Value="ID">ID</asp:ListItem>
                        <asp:ListItem Value="IL">IL</asp:ListItem>
                        <asp:ListItem Value="IN">IN</asp:ListItem>
                        <asp:ListItem Value="IA">IA</asp:ListItem>
                        <asp:ListItem Value="KS">KS</asp:ListItem>
                        <asp:ListItem Value="KY">KY</asp:ListItem>
                        <asp:ListItem Value="LA">LA</asp:ListItem>
                        <asp:ListItem Value="ME">ME</asp:ListItem>
                        <asp:ListItem Value="MD">MD</asp:ListItem>
                        <asp:ListItem Value="MA">MA</asp:ListItem>
                        <asp:ListItem Value="MI">MI</asp:ListItem>
                        <asp:ListItem Value="MN">MN</asp:ListItem>
                        <asp:ListItem Value="MS">MS</asp:ListItem>
                        <asp:ListItem Value="MO">MO</asp:ListItem>
                        <asp:ListItem Value="MT">MT</asp:ListItem>
                        <asp:ListItem Value="NE">NE</asp:ListItem>
                        <asp:ListItem Value="NV">NV</asp:ListItem>
                        <asp:ListItem Value="NH">NH</asp:ListItem>
                        <asp:ListItem Value="NJ">NJ</asp:ListItem>
                        <asp:ListItem Value="NM">NM</asp:ListItem>
                        <asp:ListItem Value="NY">NY</asp:ListItem>
                        <asp:ListItem Value="NC">NC</asp:ListItem>
                        <asp:ListItem Value="ND">ND</asp:ListItem>
                        <asp:ListItem Value="OH">OH</asp:ListItem>
                        <asp:ListItem Value="OK">OK</asp:ListItem>
                        <asp:ListItem Value="OR">OR</asp:ListItem>
                        <asp:ListItem Value="PA">PA</asp:ListItem>
                        <asp:ListItem Value="RI">RI</asp:ListItem>
                        <asp:ListItem Value="SC">SC</asp:ListItem>
                        <asp:ListItem Value="SD">SD</asp:ListItem>
                        <asp:ListItem Value="TN">TN</asp:ListItem>
                        <asp:ListItem Value="TX">TX</asp:ListItem>
                        <asp:ListItem Value="UT">UT</asp:ListItem>
                        <asp:ListItem Value="VT">VT</asp:ListItem>
                        <asp:ListItem Value="VA">VA</asp:ListItem>
                        <asp:ListItem Value="WA">WA</asp:ListItem>
                        <asp:ListItem Value="WV">WV</asp:ListItem>
                        <asp:ListItem Value="WI">WI</asp:ListItem>
                        <asp:ListItem Value="WY">WY</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group-item zip">
                    <asp:Label ID="lblZip" runat="server">Zip Code</asp:Label>
                    <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />
            <asp:Label ID="lblGames" runat="server">Games</asp:Label>
            <br />
            <div class="form-chGame">
                <asp:CheckBox ID="chGame1" runat="server" group="games" Text=" Apex Legends" />
                <asp:CheckBox ID="chGame2" runat="server" group="games" Text=" Fortnite" />
                <asp:CheckBox ID="chGame3" runat="server" group="games" Text=" League of Legends" />
                <asp:CheckBox ID="chGame4" runat="server" group="games" Text=" Overwatch" />
                <asp:CheckBox ID="chGame5" runat="server" group="games" Text=" Rocket League" />
                <asp:CheckBox ID="chGame6" runat="server" group="games" Text=" Super Smash Bros" />
                <asp:CheckBox ID="chGame7" runat="server" group="games" Text=" Tekken" />
                <asp:CheckBox ID="chGame8" runat="server" group="games" Text=" Tetris" />
                <asp:CheckBox ID="chGameOther" runat="server" group="games" Text=" Other (please specify)" />
                <asp:TextBox ID="txtGameOther" runat="server" Width="50%" Style="min-width: 400px"></asp:TextBox>
            </div>
            <br />
            <asp:Label ID="lblConduct" runat="server">I have read and agreed to the <a href="https://www.umt.edu/safety/policies/default.php#:~:text=The%20Student%20Conduct%20Code%20governs,citizenship%20in%20our%20academic%20community.">Student Code of Conduct</a></asp:Label>
            <asp:CheckBox ID="chConduct" runat="server" />
            <br />
            <br />
            <asp:Label ID="lblSubsribe" runat="server">I would like to subcribe to email communcation</asp:Label>
            <asp:CheckBox ID="chSubcribe" runat="server" Checked="True" />
            <br />
            <br />
            <asp:Label ID="lblRegister" runat="server" Style="color: red"></asp:Label>
            <br />
            <asp:Button ID="btnRegister" input="submit" runat="server" Text="Register" CssClass="button" OnClick="btnRegister_Click" />
        </form>
        <div class="form-item">
            <p>Already registered? <a href="Login.aspx">Login</a></p>
        </div>
    </div>
</body>
</html>
