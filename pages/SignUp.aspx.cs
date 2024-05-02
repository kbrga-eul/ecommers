using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace WebApplication2
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            if (tbUname.Text != "" & tbPassword.Text != "" && tbName.Text != "" && tbEmail.Text != "" && tbConfirmPassword.Text != "")
            {
                if (tbPassword.Text == tbConfirmPassword.Text)
                {
                    String cs = ConfigurationManager.ConnectionStrings["AppDatabaseConnectionString1"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(cs))
                    {
                        SqlCommand cmd = new SqlCommand("insert into Users values('" + tbUname.Text + "','" + tbPassword.Text + "','" + tbEmail.Text + "','" + tbName.Text + "','U')", conn);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        lblMsg.Text = "Kayıt Başarılı";
                        lblMsg.ForeColor = Color.Green;
                        Response.Redirect("~/Signin.aspx");
                    }
                }
                else
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Şifreler eşleşmiyor";
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Tüm alanlar zorunludur.";
            }
        }
    }
}