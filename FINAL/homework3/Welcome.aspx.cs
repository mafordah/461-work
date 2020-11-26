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
    public partial class Welcome : System.Web.UI.Page
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
                    userName.InnerHtml = ds.Tables[0].Rows[0]["firstName"].ToString();
                }
            }
            else
            {
                Response.Redirect("./Default.aspx");
            }

            if (!IsPostBack)
            {
                Database database = new Database();

                string query = "getAllStates";
                DataSet states = database.getQueryWithoutParameters(query);

                ddShippingState.DataTextField = "stateName";
                ddShippingState.DataValueField = "stateID";
                ddShippingState.DataSource = states.Tables[0];
                ddShippingState.DataBind();

                ddBillingState.DataTextField = "stateName";
                ddBillingState.DataValueField = "stateID";
                ddBillingState.DataSource = states.Tables[0];
                ddBillingState.DataBind();

                HideBilling();
            }
        }


        protected void HideBilling()
        {
            billingInfo.Visible = false;
            txtBillingStreetName1.Visible = false;
            txtBillingStreetName2.Visible = false;
        }

        protected void ShowBilling()
        {
            billingInfo.Visible = true;
            txtBillingStreetName1.Visible = true;
            txtBillingStreetName2.Visible = true;
        }

        protected void ChBillingStreetNameChanged(object sender, EventArgs e)
        {
            if (chBillingStreetNameSame.Checked)
            {
                HideBilling();
            }
            else
            {
                ShowBilling();
            }
        }

        protected void Submit(object sender, EventArgs e)
        {
            int userID = Convert.ToInt32(Session["user"].ToString());
            string phone = txtPhone.Text;
            string shippingAddress1 = txtShippingStreetName1.Text;
            string shippingAddress2 = txtShippingStreetName2.Text;
            string shippingCity = txtShippingCity.Text;
            int shippingState = Convert.ToInt32(ddShippingState.SelectedItem.Value);
            string shippingZip = txtShippingZip.Text;

            string billingAddress1 = txtBillingStreetName1.Text;
            string billingAddress2 = txtBillingStreetName2.Text;
            string billingCity = txtBillingCity.Text;
            int billingState = Convert.ToInt32(ddBillingState.SelectedItem.Value);
            string billingZip = txtBillingZip.Text;

            Users user = new Users();

            user.addPhone(userID, phone);
            user.addAddress(userID, "shipping", shippingAddress1, shippingAddress2, shippingCity, shippingState, shippingZip);

            if (chBillingStreetNameSame.Checked)
            {
                user.addAddress(userID, "billing", shippingAddress1, shippingAddress2, shippingCity, shippingState, shippingZip);
            }
            else
            {
                user.addAddress(userID, "billing", billingAddress1, billingAddress2, billingCity, billingState, billingZip);
            }

            Response.Redirect("./Account.aspx");
        }
    }
}