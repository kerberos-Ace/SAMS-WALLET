using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.Admin
{
    public partial class Fake_Bank : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

         if (Session["email"] == null)
            {


                Response.Redirect("../Index.aspx");
            }
            else
            
         
            {

                if (!IsPostBack)
                {
                   
                    DropDownList1.Items.Add(new ListItem("Select", ""));

                    SqlConnection cn = new SqlConnection();
                    cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

                    cn.Open();
                    String str = "select accno from banker ";
                    SqlCommand cmd = new SqlCommand(str, cn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {

                        DropDownList1.Items.Add(dr[0].ToString());


                    }
                    cn.Close();

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            if (DropDownList1.SelectedIndex == 0) {



               ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Choose Account Number')", true);


            
            
            } else { 
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open();
            string str12 = "update banker set bal =bal+" +Int32.Parse( amount.Value) + " where  accno='" + DropDownList1.SelectedValue.ToString() + "' and pass='" + pass.Value + "' ";
            SqlCommand cmd = new SqlCommand(str12, cn);
            int i = cmd.ExecuteNonQuery();
            amount.Value = "";
            DropDownList1.SelectedIndex = 0;
            pass.Value = "";
            if (i == 0)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            else
            {

                Panel1.Visible = false;

                Panel2.Visible = true;

            }
            cn.Close();

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            amount.Value = "";
            DropDownList1.SelectedIndex = 0;
            pass.Value = "";
        }
    }
}