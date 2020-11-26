<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="homework3.Account" MasterPageFile="~/Final.Master" %>

        
<asp:Content ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

        <div style="height: 140px"></div>
        <div class="body">
            <div class="filters">
                <asp:Image runat="server" ID="profile" class="profile" ImageUrl="/Images/accountLarge.png" alt="Redline Apparel Account"></asp:Image>
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
</asp:Content>

