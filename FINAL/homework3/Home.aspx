<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="homework3.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Redline Apparel Wholesale</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./final.css" type="text/css" />

</head>
<body>
    <form id="search" runat="server">
        <div class="header">
            <div class="header-item logo" style="padding: 20px; text-align: center; align-self: center">
                <a href="Home.aspx">
                    <img src="/Images/redLineLogo.png" alt="Redline Apparel Logo" height="75" />
                </a>
            </div>
            <div class="header-item links">
                <a href="Home.aspx">
                    <div id="link-home" class="tabs" style="color: #d60f0f">Home</div>
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
                        <asp:Image ID="userIcon" runat="server" class="icon" ImageUrl="/Images/account.png" alt="Redline Apparel Account"></asp:Image>
                    </a>
                    <img class="icon" src="/Images/bag.png" alt="Redline Apparel Bag" />
                </div>
                <br />

                <asp:TextBox ID="txtSearch" runat="server" Style="width: 50%; height: 25px;"></asp:TextBox>
                <asp:Button ID="btnSearch" input="submit" runat="server" Text="Search" CssClass="button" Style="margin-right: 50px" />


            </div>
        </div>
        <div style="height: 140px"></div>
        <img src="/Images/headerImage.jpg" class="hero" />
        <div class="body">
            <div class="filters">
                <br />
                <br />
                <asp:Button runat="server" class="types" Text="View All" OnClick="All_Click"></asp:Button>
                <br />
                <asp:Button runat="server" class="types" Text="Tops" OnClick="Top_Click"></asp:Button>
                <br />
                <asp:Button runat="server" class="types" Text="Bottoms" OnClick="Bottom_Click"></asp:Button>
                <br />
                <asp:Button runat="server" class="types" Text="Dresses" OnClick="Dress_Click"></asp:Button>
                <br />
                <asp:Button runat="server" class="types" Text="Outerwear" OnClick="Outerwear_Click"></asp:Button>
                <br />
                <asp:Button runat="server" class="types" Text="Shoes" OnClick="Shoe_Click"></asp:Button>
                <br />
                <asp:Button runat="server" class="types" Text="Bags" OnClick="Bag_Click"></asp:Button>
                <br />
                <asp:Button runat="server" class="types" Text="Accessories" OnClick="Accessory_Click"></asp:Button>
                <br />
                <br />

            </div>
            <div class="items">
                <asp:ListView runat="server" ID="lvProducts"
                    GroupItemCount="5"
                    GroupPlaceholderID="groupPlaceHolder"
                    ItemPlaceholderID="itemPlaceHolder"
                    OnItemDataBound="ItemDataBound">
                    <LayoutTemplate>
                        <table>
                            <asp:PlaceHolder runat="server" ID="groupPlaceHolder"></asp:PlaceHolder>
                        </table>
                    </LayoutTemplate>
                    <GroupTemplate>
                        <tr>
                            <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td>
                            <div class="product">
                                <asp:Image runat="server" ID="productImage" Width="240"></asp:Image>

                                <h3 style="color: #d60f0f"><%# Eval("productName") %></h3>

                                <p style="margin:unset">$<%# Eval("price") %></p>

                                <asp:Button runat="server" ID="addProduct" class="types" style="padding-top: 0px; font-size: 30px; width: 100%" Text="&#43;"></asp:Button>
                            </div>
                        </td>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        <div class="footer">
            <p style="width: 100%;"><br /> <br /> <br /> &#169; Redline Apparel </p>
        </div>
    </form>
</body>
</html>

