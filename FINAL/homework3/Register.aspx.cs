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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        
        protected void ValidateConduct(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chConduct.Checked;
        }


        protected void Submit(object sender, EventArgs e)
        {
            string company = txtCompany.Text;
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            string PWD = txtPassword.Text;
            string subscribed;
            string admin = "No";

            if (chSubcribe.Checked)
            {
                subscribed = "Yes";
            } else
            {
                subscribed = "No";
            }

            Users user = new Users();

            user.addUser(company, firstName, lastName, email, PWD, subscribed, admin);

            DataSet get = user.checkUser(email, PWD);

            if (get.Tables[0].Rows.Count > 0)
            {
                int userID = Convert.ToInt32(get.Tables[0].Rows[0]["userID"].ToString());
                Session["user"] = userID;
                Response.Redirect("./Welcome.aspx");
            }
        }
    }
}