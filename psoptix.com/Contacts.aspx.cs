using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace psoptix.com
{
    public partial class Contacts : System.Web.UI.Page
    {
        private DBClass _db = new DBClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lkClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtCity.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";
        }

        protected void lkSend_Click(object sender, EventArgs e)
        {
            string sql = "Insert into Contact(FullName, City, Email, Comment) values('" + txtName.Text + "','" + txtCity.Text + "','" + txtEmail.Text + "','" + txtMessage.Text + "')";
            int i = _db.ExecuteInt(sql);
            //if (i != -1)
            //{
                //Response.Redirect("Contacts.aspx");
            //}
            Response.Write("<script>alert('Successfully!');location.reload();</script>");
        }
    }
}