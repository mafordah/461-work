<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="homework3.Contact" MasterPageFile="~/Final.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div style="height: 140px"></div>
    <div class="body">
        <div class="items">

            <asp:Image runat="server" class="aboutHeader" ImageUrl="/Images/aboutUs.jpg" alt="Redline Apparel Account"></asp:Image>
            <h1 id="aboutTxt">Contact Us</h1>
            <p style="padding: 50px">
                <strong>Email:</strong> sales@redlineapparel.com
                <br />
                <strong>Phone:</strong> 406-444-5555
            </p>
        </div>
    </div>
</asp:Content>

