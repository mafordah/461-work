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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string myConnectionString =
                ConfigurationManager.ConnectionStrings["FinalConnectionString"].ToString();
            //  Response.Write(myConnectionString);
            SqlConnection myConnection;

            myConnection = new SqlConnection(myConnectionString);
            myConnection.Open();
        }

        

        protected void Submit(object sender, EventArgs e)
        {
            
        }
    }
}