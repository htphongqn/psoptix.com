using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace psoptix.com
{
    public partial class Site : System.Web.UI.MasterPage
    {
        private DBClass _db = new DBClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lkNewsLetter_Click(object sender, EventArgs e)
        {
            DataSet ds = _db.ExecuteQuery("select * from NewsLetter where Email ='" + txtNewsLetter.Text + "'");
            if (ds != null && ds.Tables != null && ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script>alert('This email was subscribed!');location.reload();</script>");
                return;
            }
            string sql = "Insert into NewsLetter(Email) values('" + txtNewsLetter.Text + "')";
            int i = _db.ExecuteInt(sql);
            if (i != -1)
            {
                Response.Redirect("Newsletter.aspx");
            }

            txtNewsLetter.Text = "";
        }
    }
}