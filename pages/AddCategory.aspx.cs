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
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindBrandsRptr();
        }

        private void BindBrandsRptr()
        {
            String cs = ConfigurationManager.ConnectionStrings["AppDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblCategories", conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtCategories = new DataTable();
                        sda.Fill(dtCategories);
                        rptrCategories.DataSource = dtCategories;
                        rptrCategories.DataBind();

                    }
                }
            }
        }

        protected void BtnAddCategory_Click(object sender, EventArgs e)
        {
            String cs = ConfigurationManager.ConnectionStrings["AppDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("insert into tblCategories values('" + txtCategoryName.Text + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                txtCategoryName.Text = string.Empty;
            }
        }
    }
}