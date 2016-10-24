using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.Admin
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

            cn.Open();
            string tablename="";
            if(RadioButton1.Checked==true){
            tablename="signup";
            }
            else if(RadioButton2.Checked==true){
                tablename = "comp_reg";
            }

            String str = "select * from "+tablename+" where email='" + email.Value+ "' and pass='" + pass.Value + "'";
            SqlCommand cmd = new SqlCommand(str, cn);
            SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read() )



            {

                if (RadioButton1.Checked == true) {

                if (dr[2].ToString().Equals("fake@bank"))
                {
                    Session["email"] = dr[2].ToString();
                    Response.Redirect("Bank/View_Account.aspx");
                }


                else if (dr[2].ToString().Equals("gas@book"))
                {

                    Session["email"] = dr[2].ToString();
                    Response.Redirect("GasBook/Notification.aspx?mname=1");


                }
                else if (dr[2].ToString().Equals("admin@admin"))
                {

                    Session["email"] = dr[2].ToString();
                    Response.Redirect("Admin/Users_Detail.aspx");

                }
                else
                {
                    Panel1.Visible = true;


                }
                }
                else if (RadioButton2.Checked == true) {

                    Session["id"] = dr[0].ToString();
                    Response.Redirect("Company/Notification.aspx?mname=1");
                }
              

            }
                
        

            else
            {
             Panel1.Visible=true;


            }
            cn.Close();
        }
        }
    }
