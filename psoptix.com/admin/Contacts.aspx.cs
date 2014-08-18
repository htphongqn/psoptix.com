using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace psoptix.com.admin
{
    public partial class Contacts : System.Web.UI.Page
    {
        private DBClass _db = new DBClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindList();
            }
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            BindList();
        }
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton lnk = (LinkButton)sender;
                int Id = ToSQL.SQLToInt(lnk.CommandArgument);
                if (Id > 0)
                {
                    string sql = "delete from dbo.Contact where ID=" + Id;
                    int i = _db.ExecuteInt(sql);
                    BindList();
                }
            }
            catch
            {

            }
        }

        private void BindList()
        {
            string fromdate = ToSQL.SQLDateNonHour(txtFromDate.Text);
            string todate = ToSQL.SQLDateNonHour(txtToDate.Text);
            DataSet ds = _db.ExecuteQuery("select * from dbo.Contact where (" + fromdate + " is null or DateCreated >=" + fromdate + ") and (" + todate + " is null or DateCreated <= " + todate + ")");
            gvContacts.DataSource = ds;
            gvContacts.DataBind();
            this.gvContacts.UseAccessibleHeader = true;
            this.gvContacts.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}