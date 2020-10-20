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

        }

        

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (chGame1.Checked)
            {
                lblRegister.Text += chGame1.Text;
            }
            if (chGame2.Checked)
            {
                lblRegister.Text += chGame2.Text;
            }
            if (chGame3.Checked)
            {
                lblRegister.Text += chGame3.Text;
            }
            if (chGame4.Checked)
            {
                lblRegister.Text += chGame4.Text;
            }
            if (chGame5.Checked)
            {
                lblRegister.Text += chGame5.Text;
            }
            if (chGame6.Checked)
            {
                lblRegister.Text += chGame6.Text;
            }
            if (chGame7.Checked)
            {
                lblRegister.Text += chGame7.Text;
            }
            if (chGame8.Checked)
            {
                lblRegister.Text += chGame8.Text;
            }
            if (chGameOther.Checked)
            {
                lblRegister.Text += txtGameOther.Text;
            }
            if (!chGame1.Checked && !chGame2.Checked && !chGame3.Checked && !chGame4.Checked && !chGame5.Checked && !chGame6.Checked && !chGame7.Checked && !chGame8.Checked && !chGameOther.Checked)
            {
                lblRegister.Text = "";
            }
        }
    }
}