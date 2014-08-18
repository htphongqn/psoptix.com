using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace psoptix.com.admin
{
    public partial class Newsletter : System.Web.UI.Page
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
                    string sql = "delete from dbo.NewsLetter where ID=" + Id;
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
            DataSet ds = _db.ExecuteQuery("select * from dbo.NewsLetter where (" + fromdate + " is null or DateCreated >=" + fromdate + ") and (" + todate + " is null or DateCreated <= " + todate + ")");
            gvNewsletters.DataSource = ds;
            gvNewsletters.DataBind();
            this.gvNewsletters.UseAccessibleHeader = true;
            this.gvNewsletters.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}