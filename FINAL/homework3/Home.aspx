<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="homework3.Home" MasterPageFile="~/Final.Master" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
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

                            <p style="margin: unset">$<%# Eval("price") %></p>

                            <asp:Button runat="server" ID="addProduct" class="types" Style="padding-top: 0px; font-size: 30px; width: 100%" Text="&#43;"></asp:Button>
                        </div>
                    </td>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>


