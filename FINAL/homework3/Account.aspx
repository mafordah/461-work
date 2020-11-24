<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="homework3.Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Account</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./final.css" type="text/css" />

</head>
<body>
    <form id="search" runat="server">
        <div class="header">
            <div class="header-item logo" style="padding: 20px; text-align: center; align-self: center">
                <a href="Home.aspx">
                    <img src="/Images/redLineLogo.png" alt="Redline Apparel Logo" height="75" /></a>
            </div>
            <div class="header-item links">
                <a href="Home.aspx">
                    <div id="link-home" class="tabs">Home</div>
                </a>
                <a href="About.aspx">
                    <div id="link-about" class="tabs">About</div>
                </a>
                <a href="Contact.aspx">
                    <div id="link-contact" class="tabs">Contact</div>
                </a>
            </div>
            <div class="header-item search">
                <div class="icons">
                    <a href="Account.aspx">
                        <asp:Image ID="userIcon" runat="server" class="icon" ImageUrl="/Images/accountActive.png" alt="Redline Apparel Account"></asp:Image>
                    </a>
                    <img class="icon" src="/Images/bag.png" alt="Redline Apparel Bag" />
                </div>
                <br />

                <asp:TextBox ID="txtSearch" runat="server" Style="width: 50%; height: 25px;"></asp:TextBox>
                <asp:Button ID="btnSearch" input="submit" runat="server" Text="Search" CssClass="button" Style="margin-right: 50px" />


            </div>
        </div>
        <div style="height: 140px"></div>
        <div class="body">
            <div class="filters">
                <asp:Image runat="server" ID="profile" ImageUrl="/Images/accountLarge.png" alt="Redline Apparel Account"></asp:Image>
                <h2><span runat="server" id="firstName">First</span> <span runat="server" id="lastName">Last</span></h2>
                <h3 runat="server" id="companyName">Company</h3>
                <p runat="server" id="email"></p>
                <p runat="server" id="phone"></p>
                <p runat="server" id="subsciption"></p>
                <asp:Button runat="server" ID="btnLogout" Text="Logout" CssClass="button" OnClick="Logout" />
                <br />
                <br />
                <br />
            </div>
            <div class="items">
                <h3>Shipping Address</h3>
                <asp:GridView ID="shippingAddress" runat="server" GridLines="None" ShowHeader="False" CellPadding="3"
                    OnRowDataBound="GridView_RowDataBound">
                </asp:GridView>
                <br />
                <h3>Billing Address</h3>
                <asp:GridView ID="billingAddress" runat="server" GridLines="None" ShowHeader="False" CellPadding="3"
                    OnRowDataBound="GridView_RowDataBound">
                </asp:GridView>
            </div>
        </div>
        <div class="footer">
            <p style="width: 100%;"><br /> <br /> <br /> &#169; Redline Apparel </p>
        </div>
    </form>
</body>
</html>

