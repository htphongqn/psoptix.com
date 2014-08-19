using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

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
            try
            {
                //System.Net.Mail.SmtpClient smtp = new SmtpClient()
                //{
                //    Host = "smtpout.secureserver.net",
                //    Port = 465,
                //    EnableSsl = ("TLS" != ""),
                //    UseDefaultCredentials = true
                //};
                //smtp.Send(new MailMessage(txtEmail.Text, "Info@perfectsqs.com", txtName.Text + " - " + txtCity.Text, txtMessage.Text));

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(txtEmail.Text);
                mail.To.Add("info@perfectsqs.com");
                mail.Subject = "Contact Us";
                mail.IsBodyHtml = true;
                mail.Body = "Name: " + txtName.Text + "<br />";
                mail.Body += "City: " + txtCity.Text + "<br />";
                mail.Body += "Email: " + txtEmail.Text + "<br />";
                mail.Body += "Comments: " + txtMessage.Text + "<br />";
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtpout.secureserver.net";
                smtp.Send(mail);
            }
            catch { }
            //if (i != -1)
            //{
                //Response.Redirect("Contacts.aspx");
            //}
            Response.Write("<script>alert('Successfully!');location.reload();</script>");
        }
    }
}