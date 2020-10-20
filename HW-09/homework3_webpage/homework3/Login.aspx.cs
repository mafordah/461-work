using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace homework3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.QueryString["username"];
            txtLogin.Text = "Welcome, " + username + "<br />";

        }
        protected void Submit(object sender, EventArgs e)
        {
            //Response.Redirect("Login.aspx?username=" + txtUserName.Text + "&lastname=" + txtPassword.Text);
            Response.Redirect("Login.aspx?username=" + txtUserName.Text );
            HttpCookie userInfo = new HttpCookie("userInfo");
            userInfo["username"] = txtUserName.Text;
            userInfo["password"] = txtPassword.Text;
            userInfo.Expires.Add(new TimeSpan(0, 1, 0));
            Response.Cookies.Add(userInfo);
            string userName = string.Empty;
            string password = string.Empty;
            userName = Request.Cookies["username"].Value;
            password = Request.Cookies["password"].Value;
            

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

        }

    }
}