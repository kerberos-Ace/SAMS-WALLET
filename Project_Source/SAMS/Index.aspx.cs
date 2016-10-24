using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

            cn.Open();
            String str = "select * from signup where email='" + email.Value + "' and pass='" + pass.Value + "'";
            SqlCommand cmd = new SqlCommand(str, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (dr[2].ToString() != "admin@admin" && dr[2].ToString() != "fake@bank" && dr[2].ToString() != "gas@book")
                {
                    Session["unid"] = dr[4].ToString();
                    Response.Redirect("user/Notification.aspx");

                }
            }

            else
            {
                Panel1.Visible = true;


            }
            cn.Close();

        }
    }
}