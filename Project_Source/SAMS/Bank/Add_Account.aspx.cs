using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.Bank
{
    public partial class Add_Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {


                Response.Redirect("../Index.aspx");
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

                String s = "insert into banker values(@accno,@pass,@bal,@bname)";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlParameter p = new SqlParameter("accno", Number1.Value);
                SqlParameter p1 = new SqlParameter("pass",pass.Value);
                SqlParameter p2 = new SqlParameter("bal", amount.Value);

                SqlParameter p3 = new SqlParameter("bname", Number2.Value); 

                cmd.Parameters.Add(p);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.Parameters.Add(p3);
     

                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();
                Number1.Value = "";
                Number2.Value = "";
                pass.Value = "";
                amount.Value = "";

                Panel1.Visible = false;
               
                Panel2.Visible = true;
            }
            catch (Exception ew)
            {
               
                Panel1.Visible = true;

                Panel2.Visible = false;

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Account.aspx");
        }
    }
}