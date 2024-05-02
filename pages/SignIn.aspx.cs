using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
                {
                    Username.Text = Request.Cookies["UNAME"].Value;
                    txtPassword.Attributes["value"] = Request.Cookies["PWD"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["AppDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from Users where Username='" + Username.Text + "' and Password='" + txtPassword.Text + "'", conn);
                conn.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    Session["USERID"] = dt.Rows[0]["UId"].ToString();
                    Session["USEREMAIL"] = dt.Rows[0]["Email"].ToString();

                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = Username.Text;
                        Response.Cookies["PWD"].Value = txtPassword.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);

                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    string UType;
                    UType = dt.Rows[0][5].ToString().Trim();

                    if (UType == "U")
                    {

                        Session["USERNAME"] = Username.Text;

                        if (Request.QueryString["rurl"] != null)
                        {
                            if(Request.QueryString["rurl"] == "cart")
                            {
                                Response.Redirect("~/Cart.aspx");
                            }
                        }
                        else
                        {
                            Response.Redirect("~/UserHomePage.aspx");
                        }
                        
                    }
                    if (UType == "A")
                    {

                        Session["USERNAME"] = Username.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }
                }
                else
                {
                    lblError.Text = "Hatalı kullanıcı adı veya şifre!";
                }
            }
        }
    }
}