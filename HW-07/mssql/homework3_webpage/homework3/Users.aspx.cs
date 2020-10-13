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
            string myConnectionString = ConfigurationManager.ConnectionStrings["ESportsConnectionString"].ToString();
            //  Response.Write(myConnectionString);
            SqlConnection myConnection;

            myConnection = new SqlConnection(myConnectionString);
            myConnection.Open();

            string myQuery = "SELECT personalID AS 'ID', " +
                " firstName as [First Name] , " +
                "lastName as [Last Name]" +
                "FROM People " +
                " ORDER BY lastName";

            DataSet myDataSet = new DataSet();
            SqlCommand myCommand = new SqlCommand(myQuery);
            myCommand.Connection = myConnection;
            myCommand.CommandType = CommandType.Text;

            SqlDataAdapter myAdapter = new SqlDataAdapter(myCommand);
            myAdapter.Fill(myDataSet);
            myConnection.Close();

            gvPeople.DataSource = myDataSet.Tables[0];
            gvPeople.DataBind();
        }
    }
}