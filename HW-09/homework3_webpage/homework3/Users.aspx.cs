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
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Events myEvents = new Events();
            // DataSet myDataSet = myEvents.getPeople();
            DataSet myDataSet = myEvents.getPerson(5);
            gvPeople.DataSource = myDataSet.Tables[0];
            gvPeople.DataBind();
        }
    }
}