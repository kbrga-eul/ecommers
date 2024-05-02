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
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
            {
                if (!IsPostBack)
                {
                    BindPriceData();
                }  
            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }
        public void BindPriceData()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] CookieDataArray = CookieData.Split(',');
                if (CookieDataArray.Length > 0)
                {
                    DataTable dtBrands = new DataTable();
                    Int64 CartTotal = 0;
                    Int64 Total = 0;

                    for (int i = 0; i < CookieDataArray.Length; i++)
                    {
                        string PID = CookieDataArray[i].ToString().Split('-')[0];
                        string SizePID = CookieDataArray[i].ToString().Split('-')[1];

                        if (hfPidSizeID.Value != null && hfPidSizeID.Value != "")
                        {
                            hfPidSizeID.Value += "," + PID + "-" + SizePID;
                        }
                        else
                        {
                            hfPidSizeID.Value = PID + "-" + SizePID;
                        }

                        String CS = ConfigurationManager.ConnectionStrings["AppDatabaseConnectionString1"].ConnectionString;
                        using (SqlConnection conn = new SqlConnection(CS))
                        {
                            using (SqlCommand cmd = new SqlCommand("select A.*,dbo.getSizeName(" + SizePID + ") as SizeNamee," + SizePID + " as SizeIDD,SizeData.Name,SizeData.Extention from tblProducts A cross apply( select top 1 B.Name,Extention from tblProductImages B where B.PID=A.PID ) SizeData where A.PID="
                            + PID + "", conn))
                            {
                                cmd.CommandType = CommandType.Text;
                                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                                {

                                    sda.Fill(dtBrands);
                                }
                            }
                        }
                        CartTotal += Convert.ToInt64(dtBrands.Rows[i]["PPrice"]);
                        Total += Convert.ToInt64(dtBrands.Rows[i]["PSellPrice"]);

                    }
                    divPriceDetails.Visible = true;

                    spanCartTotal.InnerText = CartTotal.ToString();
                    spanTotal.InnerText = "₺ " + Total.ToString();
                    spanDiscount.InnerText = "- " + (CartTotal - Total).ToString();

                    hdCartAmount.Value = CartTotal.ToString();
                    hdCartDiscount.Value = (CartTotal - Total).ToString();
                    hdTotalPayed.Value = Total.ToString();

                }
                else
                {
                    Response.Redirect("~/Products.aspx");
                }
            }
            else
            {
                Response.Redirect("~/Products.aspx");
            }
        }

        protected void btnPaytr_Click(object sender, EventArgs e)
        {
            if (Session["USERID"] != null)
            {
                string USERID = Session["USERID"].ToString();
                string PaymentType = "Paytr";
                string PaymentStatus = "Ödenmedi";
                //DateTime DateofPurchase=DateTime.Now;
                //string EMAILID = Session["USEREMAIL"].ToString();

                //Insert Data to tblPurchase
                String CS = ConfigurationManager.ConnectionStrings["AppDatabaseConnectionString1"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into tblPurchase values('" + USERID + "','"
                        + hfPidSizeID.Value + "','" + hdCartAmount.Value + "','" + hdCartDiscount.Value + "','"
                        + hdTotalPayed.Value + "','" + PaymentType + "','" + PaymentStatus + "',getdate(),'"
                        + txtName.Text + "','" + txtAddress.Text + "','" + txtPinCode.Text + "','" + txtMobileNumber.Text.ToString() + "') select SCOPE_IDENTITY()", conn);
                    conn.Open();
                    Int64 PurchaseID = Convert.ToInt64(cmd.ExecuteScalar());
                }

            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }
    }
}