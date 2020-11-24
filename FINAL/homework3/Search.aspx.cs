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
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                int userID = Convert.ToInt32(Session["user"].ToString());

                Users user = new Users();

                DataSet ds = user.getSingleUser(userID);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (!string.IsNullOrEmpty(ds.Tables[0].Rows[0]["photo"].ToString()))
                    {
                        userIcon.ImageUrl = "./Images/Users/" + ds.Tables[0].Rows[0]["photo"].ToString();
                    }
                }

            }
            else
            {
                Response.Redirect("./Default.aspx");
            }
        }
    }
}