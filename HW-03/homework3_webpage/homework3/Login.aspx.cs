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
            string firstname = Request.QueryString["firstname"];
            string lastname = Request.QueryString["lastname"];
            Label1.Text = "welcome" + firstname + " " + lastname;

        }
        protected void Submit(object sender, EventArgs e)
        {
            //Response.Redirect("Login.aspx?firstname=" + txtUserName.Text + "&lastname=" + txtPassword.Text);
            Response.Redirect("Login.aspx?firstname=" + txtUserName.Text );

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

        }
    }
}