using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.Company
{
    public partial class Generate_Coupons : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {


                Response.Redirect("../Index.aspx");
            }
            else
            {
                return_ name = new return_();
                Label1.Text = name.bal_(Session["id"].ToString(), "companyname", 6);
                Number2.Value = Label1.Text;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

                cn.Open();

                maill mailll = new maill();
                string code_co=mailll.passw();
                String s = "insert into coupons values(@compid,@discount,@cocode,@limit)";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlParameter p = new SqlParameter("compid", Session["id"].ToString());
                SqlParameter p1 = new SqlParameter("discount",discount.Value);
                SqlParameter p2 = new SqlParameter("cocode", code_co);
                SqlParameter p3 = new SqlParameter("limit",'0');
                
         


                cmd.Parameters.Add(p);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.Parameters.Add(p3);
         
       

                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();
              discount.Value = "";
           


                Panel1.Visible = false;
                Label2.Text = "coupon code : "+code_co;
                Panel2.Visible = true;
            }
            catch (Exception ew)
            {
               
                Panel1.Visible = true;
                Label1.Text = ew.Message;
                Panel2.Visible = false;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Generate_Coupons.aspx");
        }
    }
}