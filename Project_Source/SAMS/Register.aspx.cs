using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm
{
    public partial class Register : System.Web.UI.Page
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
                Label1.Text = "Invalid Credentials";
                email.Value = "";
                pass.Value = "";

            } cn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {



             try
            {
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

                cn.Open();
            
                maill mailll = new maill();

                String s = "insert into signup values(@name,@email,@pno,@unid,@pass,@wallet)";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlParameter p = new SqlParameter("name", name.Value);
                SqlParameter p1 = new SqlParameter("email", email_register.Value);
                SqlParameter p2 = new SqlParameter("pno", pno.Value);
                 string unid="UNID" + mailll.unid();
                SqlParameter p3 = new SqlParameter("unid",unid );
                 string passsss=mailll.send_maill(name.Value,email_register.Value, "Unique ID -"+ unid, 1);
                 Label4.Text = passsss;
                SqlParameter p4 = new SqlParameter("pass",passsss );
                SqlParameter p5 = new SqlParameter("wallet", 50);


                cmd.Parameters.Add(p);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.Parameters.Add(p3);
                cmd.Parameters.Add(p4);
                cmd.Parameters.Add(p5);

                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();
                name.Value = "";
                email_register.Value = "";
                pno.Value = "";
             

                 Panel1.Visible = false;
                 Label3.Text = "You have been registered.";
                 Panel2.Visible = true;
            }
            catch (Exception ew)
             {
                Label2.Text="Email Address or Phone Number already exists.";
              Panel1.Visible=true;

                 Panel2.Visible = false;
            
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            return_ r = new return_();
            if (r.bal_("email", reset_email.Value, 4).Equals("none"))
            {
                Panel1.Visible = true;
                Label2.Text = "Email Address doesnot exists. ";
                Panel2.Visible = false;



            }
            else
            {

                maill mai = new maill();
              string pass=  mai.send_maill("", reset_email.Value, "Your password is ", 2);
              SqlConnection cn = new SqlConnection();
              cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
              cn.Open();
              string str12 = "update signup set pass ='" + pass + "' where  email='" + reset_email.Value + "'  ";
              SqlCommand cmd = new SqlCommand(str12, cn);
              cmd.ExecuteNonQuery();

              cn.Close();

              Panel2.Visible = true;
              Label3.Text = "Password has been sent to  " + reset_email.Value; ;
              Panel1.Visible = false;




            }



        }  
    
    

        }

        }
    
