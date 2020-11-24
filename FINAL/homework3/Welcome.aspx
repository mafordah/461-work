<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="homework3.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Redline Apparel Wholesale</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./final.css" type="text/css" />

</head>
<body>
    <div class="registration-form">
        <br />
        <h2 class="form-item">Welcome to Redline Apparel, <span id="userName" runat="server"></span></h2>
        <br />

        <form id="formRegistration" runat="server" class="form-scroll">
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
            <asp:CheckBox ID="chBillingStreetNameSame" runat="server" Checked="True" AutoPostBack="true" OnCheckedChanged="ChBillingStreetNameChanged"/>
            <asp:TextBox ID="txtBillingStreetName1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtBillingStreetName2" runat="server"></asp:TextBox>
            <br />
            <br />
            <div ID="billingInfo" class="form-group" runat="server">
                <div class="form-group-item city">
                    <asp:Label ID="lblBillingCity" runat="server">City</asp:Label>
                    <asp:TextBox ID="txtBillingCity" runat="server"></asp:TextBox>
                </div>
                <div class="form-group-item state">
                    <asp:Label ID="lblBillingState" runat="server">State</asp:Label>
                    <asp:DropDownList ID="ddBillingState" runat="server" Width="100%">
                        
                    </asp:DropDownList>
                </div>
                <div class="form-group-item zip">
                    <asp:Label ID="lblBillingZip" runat="server">Zip Code</asp:Label>
                    <asp:TextBox ID="txtBillingZip" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <br />

            <asp:Label ID="lblRegister" runat="server" Style="color: red"></asp:Label>
            <br />
            <div class="center">
                <asp:Button ID="btnAddInfo" input="submit" runat="server" Text="Add Details" CssClass="button" OnClick="Submit" />
            </div>
        </form>
        <div class="form-item center">
            <p><a href="Account.aspx">Skip for now</a></p>
        </div>
    </div>
</body>
</html>
