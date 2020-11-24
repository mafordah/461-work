<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="homework3.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Redline Apparel</title>
    <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./final.css" type="text/css" />

</head>
<body>
    <div class="header">
        <div class="header-item logo" style="padding: 20px; text-align: center; align-self: center">
            <a href="Home.aspx">
                <img src="/Images/redLineLogo.png" alt="Redline Apparel Logo" height="75" />
            </a>
        </div>
        <div class="header-item links">
            <a href="Home.aspx">
                <div id="link-home" class="tabs">Home</div>
            </a>
            <a href="About.aspx">
                <div id="link-about" class="tabs" style="color: #d60f0f">About</div>
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
            <form id="search" runat="server">
                <asp:TextBox ID="txtSearch" runat="server" Style="width: 50%; height: 25px;"></asp:TextBox>
                <asp:Button ID="btnSearch" input="submit" runat="server" Text="Search" CssClass="button" Style="margin-right: 50px" />

            </form>
        </div>
    </div>
    <div style="height: 140px"></div>
    <div class="body">
        <div class="items">
            <asp:Image runat="server" class="aboutHeader" ImageUrl="/Images/aboutUs.jpg" alt="Redline Apparel Account"></asp:Image>
            <h1 id="aboutTxt">Why Redline?</h1>
            <p style="padding: 50px">
                Redline Apparel is in honor of the innumerable amount of red lines created while building this website. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur et orci id lectus fringilla facilisis quis at lorem. Quisque faucibus tempus vulputate. Duis eu massa lacus. Suspendisse aliquet diam arcu, elementum sodales tortor gravida id. Suspendisse luctus nisl eu orci dignissim varius. Curabitur tellus elit, efficitur ac sapien vel, porta cursus turpis. Maecenas id orci purus. Sed tempus eu erat ac consequat. Cras et placerat lectus. Integer convallis scelerisque egestas. Cras sit amet convallis odio. Nulla porttitor euismod metus ultricies imperdiet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam purus magna, convallis nec sagittis lobortis, laoreet vitae diam.
                <br />
                <br />
                In hac habitasse platea dictumst. Nulla venenatis pellentesque malesuada. Donec scelerisque eget purus id mattis. Curabitur blandit egestas commodo. Suspendisse volutpat tellus quis ullamcorper fermentum. Nunc pulvinar consequat varius. Nam sed laoreet arcu. In eget odio eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In vel tellus pharetra purus volutpat rhoncus eu vel massa. Nunc eu urna egestas, fringilla nunc a, lacinia sem. Nunc vehicula velit laoreet tellus semper dictum. Maecenas facilisis ullamcorper lorem, nec lobortis tortor sollicitudin at. Donec lobortis posuere orci. Proin nec molestie felis. Morbi faucibus feugiat ex quis tempor.

            </p>
        </div>
    </div>
    <div class="footer">
        <p style="width: 100%;"><br /> <br /> <br /> &#169; Redline Apparel </p>
    </div>
</body>
</html>

