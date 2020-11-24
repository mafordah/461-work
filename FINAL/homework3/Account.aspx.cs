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
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                int userID = Convert.ToInt32(Session["user"].ToString());
                
                Users user = new Users();

                DataSet ds = user.getSingleUser(userID);
                DataSet shippingAddressDs = user.getAddress(userID, "shipping");
                shippingAddress.DataSource = shippingAddressDs;
                shippingAddress.DataBind();

                DataSet billingAddressDs = user.getAddress(userID, "billing");
                billingAddress.DataSource = billingAddressDs;
                billingAddress.DataBind();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (!string.IsNullOrEmpty(ds.Tables[0].Rows[0]["photo"].ToString()))
                    {
                        profile.ImageUrl = "./Images/Users/" + ds.Tables[0].Rows[0]["photo"].ToString();
                        userIcon.ImageUrl = "./Images/Users/" + ds.Tables[0].Rows[0]["photo"].ToString();
                    }
                    
                
                    firstName.InnerHtml = ds.Tables[0].Rows[0]["firstName"].ToString();
                    lastName.InnerHtml = ds.Tables[0].Rows[0]["lastName"].ToString();
                    companyName.InnerHtml = ds.Tables[0].Rows[0]["company"].ToString();
                    email.InnerHtml = ds.Tables[0].Rows[0]["email"].ToString();
                    phone.InnerHtml = ds.Tables[0].Rows[0]["phone"].ToString(); 
                    subsciption.InnerHtml = "Subcribed: " + ds.Tables[0].Rows[0]["subscribed"].ToString();
                }


            }
            else
            {
                Response.Redirect("./Default.aspx");
            }
        }

        protected void GridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells[1].Text != null)
            e.Row.Cells[0].Visible = false;
            e.Row.Cells[1].Visible = false;
        }

        protected void Logout(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("./Default.aspx");
        }
    }
}