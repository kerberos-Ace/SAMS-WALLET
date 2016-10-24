using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.user
{
    public partial class Manage_Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
              if (Session["unid"] == null)
            {


                Response.Redirect("../Index.aspx");
            }
              else
              {
                  return_ name = new return_();
                  Label1.Text = name.bal_(Session["unid"].ToString(), "", 2);
              }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            return_ ret = new return_();
            string name = ret.bal_(Session["unid"].ToString(), "", 5);
            if (name.Equals(TextBox1.Text))
            {


                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                cn.Open();
                string str12 = "update signup set pass =" + TextBox2.Text + " where  unid='" + Session["unid"].ToString() + "'  ";
                SqlCommand cmd = new SqlCommand(str12, cn);
                cmd.ExecuteNonQuery();

                cn.Close();

                Panel1.Visible = false;
                Panel2.Visible = true;
            }
            else
            {
                Panel2.Visible = false;
                Panel1.Visible = true;
                Label2.Text = "Old Password is wrong";
            }


        }

    
    }
}