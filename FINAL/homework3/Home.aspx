<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="homework3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Redline Apparel Wholesale</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./final.css" type="text/css" />

</head>
<body>
    <div class="header">
        <div class="header-item logo">
        </div>
        <div class="header-item links">
            <div id="link-home" class="tabs" style="color:#d60f0f">Home</div>
            <div id="link-account" class="tabs">Account</div>
            <div id="link-orders" class="tabs">Orders</div>
            <div id="link-about" class="tabs">About</div>
            <div id="link-contact" class="tabs">Contact</div>
        </div>
        <div class="header-item search">
            <form id="search" runat="server">
                <asp:TextBox ID="txtSearch" runat="server" style ="width:50%; height: 25px;"></asp:TextBox>
                <asp:Button ID="btnSearch" input="submit" runat="server" Text="Search" CssClass="button" style ="margin-right: 50px"/>

            </form>
        </div>
    </div>
    <div class="body">
            <div class="filters">
                
            </div>
            <div class="items">

            </div>
        </div>
</body>
</html>

