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
using System.Net.Mail;
using System.Net;

namespace WebApplication2
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnForgotPasswordRecover_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["AppDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from Users where Email='" + txtEmail.Text + "'", conn);
                conn.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int UID = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("insert into ForgotPasswordRequest values('" + myGUID + "','" + UID + "',getdate())", conn);
                    cmd1.ExecuteNonQuery();

                    //mail management
                    String ToEmailAddress = dt.Rows[0][3].ToString();
                    String Username = dt.Rows[0][1].ToString();
                    String EmailBody = "Merhaba " + Username + ",<br/><br/> Şifrenizi sıfırlamak için aşağıdaki bağlantıya tıklayın<br/><br/> https://localhost:44375/RecoverPasswordMail.aspx?UID=" + myGUID;
                    MailMessage PassRecoverMail = new MailMessage("kubra.arti34@gmail.com", ToEmailAddress);
                    PassRecoverMail.Body = EmailBody;
                    PassRecoverMail.IsBodyHtml = true;
                    PassRecoverMail.Subject = "Fede Home Şifre Sıfırlama Talebi";

                    //SMTP management
                    SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                    SMTP.Credentials = new NetworkCredential()
                    {
                        UserName = "kubra.arti34@gmail.com",
                        Password = "Sen1.Sev1yorum"
                    };
                    SMTP.EnableSsl = true;
                    SMTP.Send(PassRecoverMail);

                    lblForgotPasswordRecover.Text = "Şifrenizi yenilemek için e-postanızı kontrol edin";
                    lblForgotPasswordRecover.ForeColor = Color.Green;

                }
                else
                {
                    lblForgotPasswordRecover.Text = "Ooops GEÇERSİZ bir mail adresi girdiniz.";
                    lblForgotPasswordRecover.ForeColor = Color.Red;
                }
            }
        }
    }
}