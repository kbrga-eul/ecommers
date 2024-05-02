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
    public partial class AddGender : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindBrandRptr();
        }

        private void BindBrandRptr()
        {
            String cs = ConfigurationManager.ConnectionStrings["AppDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblGender", conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtCategories = new DataTable();
                        sda.Fill(dtCategories);
                        rptrGender.DataSource = dtCategories;
                        rptrGender.DataBind();

                    }
                }
            }
        }

        protected void BtnAddGender_Click(object sender, EventArgs e)
        {
            String cs = ConfigurationManager.ConnectionStrings["AppDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("insert into tblGender values('" + txtGender.Text + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                txtGender.Text = string.Empty;
            }
            BindBrandRptr();
        }
    }
}