using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace homework3
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if (!this.IsPostBack)
            {
                this.BindListView();
            }

            
        }

        public string query;

        protected void All_Click(object sender, EventArgs e)
        {
            query = null;
            BindListView();
        }

        protected void Top_Click(object sender, EventArgs e)
        {
            ProductType("top");
        }

        protected void Bottom_Click(object sender, EventArgs e)
        {
            ProductType("bottom");
        }

        protected void Dress_Click(object sender, EventArgs e)
        {
            ProductType("dress");
        }
        protected void Outerwear_Click(object sender, EventArgs e)
        {
            ProductType("outerwear");
        }
        protected void Shoe_Click(object sender, EventArgs e)
        {
            ProductType("shoe");
        }

        protected void Bag_Click(object sender, EventArgs e)
        {
            ProductType("bag");
        }

        protected void Accessory_Click(object sender, EventArgs e)
        {
            ProductType("accessory");
        }


        protected void ProductType(string type)
        {
            query = "SELECT productID, productImage, imageUrl, productType, productName, color, price, SKU, UPC, inventory FROM Products WHERE productType = '" + type + "'";
            BindListView();
        }

        private void BindListView()
        {
            if (query == null)
            {
                 query= "SELECT productID, productImage, imageUrl, productType, productName, color, price, SKU, UPC, inventory FROM Products ORDER BY productName";
            }

            Database database = new Database();
            DataSet ds = database.sendQuery(query);
            lvProducts.DataSource = ds;
            lvProducts.DataBind();

        }

        protected void ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                DataRowView dr = (DataRowView)e.Item.DataItem;

                ////USE BLOB CODE/////
                
                //System.Data.DataRowView rowView = e.Item.DataItem as System.Data.DataRowView;
                //string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["productImage"]);

                ////USE FILENAME/////
                
                string imageUrl = "/Images/Products/" + dr["imageUrl"];
                Image img = (Image)e.Item.FindControl("productImage");
                img.ImageUrl = imageUrl;
            }
        }
    }
}