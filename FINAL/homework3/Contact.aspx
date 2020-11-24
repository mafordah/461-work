<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="homework3.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./final.css" type="text/css" />

</head>
<body>
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
                <div id="link-contact" class="tabs" style="color: #d60f0f">Contact</div>
            </a>
        </div>
        <div class="header-item search">
            <div class="icons">
                <a href="Account.aspx">
                    <asp:Image ID="userIcon" runat="server" class="icon" ImageUrl="/Images/account.png" alt="Redline Apparel Account"></asp:Image>
                </a>
                <img class="icon" src="/Images/bag.png" alt="Redline Apparel Bag" />
            </div>
            <br />
            <form id="search" runat="server">
                <asp:TextBox ID="txtSearch" runat="server" Style="width: 50%; height: 25px;"></asp:TextBox>
                <asp:Button ID="btnSearch" input="submit" runat="server" Text="Search" CssClass="button" Style="margin-right: 50px" />

            </form>
        </div>
    </div>
    <div style="height: 140px"></div>
    <div class="body">
        <div class="items">
        </div>
    </div>
    <div class="footer">
            <p style="width: 100%;"><br /> <br /> <br /> &#169; Redline Apparel </p>
        </div>
</body>
</html>

