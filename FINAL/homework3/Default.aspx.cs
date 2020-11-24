using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace homework3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void Submit(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string PWD = txtPassword.Text;

            Users user = new Users();

            DataSet ds = user.checkUser(email, PWD);

            if (ds.Tables[0].Rows.Count > 0)
            {
                int userID = Convert.ToInt32(ds.Tables[0].Rows[0]["userID"].ToString());
                Session["user"] = userID;
                Response.Redirect("./Home.aspx");
            }
            else
            {
                
            }
        }
    }
}