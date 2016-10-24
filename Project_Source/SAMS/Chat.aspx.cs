using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm
{
    public partial class Chat : System.Web.UI.Page
    {

        public void friendlist() {
            return_ nn = new return_();
            String new_my = nn.bal_("unid", Session["unid"].ToString(), 4);
            Label4.Text = new_my;
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open();


            String s = " SELECT * FROM frndz where (sid=" + new_my + " or cid=" + new_my + ")  and status=1";
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            frnd.Controls.Add(new LiteralControl("<div class='table-responsive'>"));
            frnd.Controls.Add(new LiteralControl("<table  class='table cart-table table-striped'>"));
            frnd.Controls.Add(new LiteralControl("<thead>"));
            frnd.Controls.Add(new LiteralControl("<tr>"));
            frnd.Controls.Add(new LiteralControl("<th>Name</th>"));
            frnd.Controls.Add(new LiteralControl("<th>Status</th>"));

            int iid=0;

            frnd.Controls.Add(new LiteralControl("</tr>"));
            frnd.Controls.Add(new LiteralControl("</thead>"));
            frnd.Controls.Add(new LiteralControl("<tbody>"));
                      int count = 0;
            while (dr.Read())
            {

                count++;


                frnd.Controls.Add(new LiteralControl("<tr>"));

                retu_name na = new retu_name();


                string val_t = "";
                if (dr[1].ToString().Equals(new_my))
                {

                    val_t = na.name_(Int32.Parse(dr[2].ToString()));
                    iid=Int32.Parse(dr[2].ToString());

                }
                else if (dr[2].ToString().Equals(new_my))
                {

                    val_t = na.name_(Int32.Parse(dr[1].ToString()));
                       iid=Int32.Parse(dr[1].ToString());
                }




                LinkButton b12 = new LinkButton();
                b12.Text = val_t;

                b12.Style.Add("font-size", "15px");
                b12.Attributes.Add("href", "javascript:register_popup('" + iid + "' , '" + val_t+ "');");

                frnd.Controls.Add(new LiteralControl("<td><span class='glyphicon glyphicon-user'></span> "  ));
                frnd.Controls.Add(b12);
                frnd.Controls.Add(new LiteralControl("</td>"));

                frnd.Controls.Add(new LiteralControl("<td> <img src='css/d.png'  id='" + iid+ "-i'   />"));
               

                frnd.Controls.Add(new LiteralControl("</td>"));
               
                frnd.Controls.Add(new LiteralControl("</tr>"));


            }
            frnd.Controls.Add(new LiteralControl("</tbody></table></div>"));

            cmd.Dispose();
            cn.Close();
            if (count == 0)
            {

                frnd.Controls.Add(new LiteralControl("No Friends  Found"));

            }
        
        }

        public void friendrequest()
        {

            return_ nn = new return_();
            String new_my = nn.bal_("unid", Session["unid"].ToString(), 4);

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open();


            String s = " SELECT * FROM frndz where  cid="+new_my+"  and status=0";
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader dr = cmd.ExecuteReader();
            frndrequest.Controls.Add(new LiteralControl("<div class='table-responsive'>"));
            frndrequest.Controls.Add(new LiteralControl("<table  class='table cart-table table-striped'>"));
            frndrequest.Controls.Add(new LiteralControl("<thead>"));
            frndrequest.Controls.Add(new LiteralControl("<tr>"));
            frndrequest.Controls.Add(new LiteralControl("<th>Name</th>"));
            frndrequest.Controls.Add(new LiteralControl("<th>Accept</th>"));

            frndrequest.Controls.Add(new LiteralControl("<th>Reject</th>"));
            

            frndrequest.Controls.Add(new LiteralControl("</tr>"));
            frndrequest.Controls.Add(new LiteralControl("</thead>"));
            frndrequest.Controls.Add(new LiteralControl("<tbody>"));

            int count = 0;
            while (dr.Read())
            {

                count++;


                frndrequest.Controls.Add(new LiteralControl("<tr>"));

                retu_name na = new retu_name();


                string val_t = "";
             

                    val_t = na.name_(Int32.Parse(dr[1].ToString()));
                
          

                frndrequest.Controls.Add(new LiteralControl("<td><span class='glyphicon glyphicon-user'></span> " + val_t));

                frndrequest.Controls.Add(new LiteralControl("</td>"));

                frndrequest.Controls.Add(new LiteralControl("<td><span class='glyphicon glyphicon-check'></span> "));
              LinkButton l = new LinkButton();
                l.Text = "Accept";
                l.CommandName = dr[0].ToString();
                EventHandler eh = new EventHandler(accept);
                l.Click += eh;
               


                frndrequest.Controls.Add(l);

                frndrequest.Controls.Add(new LiteralControl("</td>"));
                frndrequest.Controls.Add(new LiteralControl("<td><span class='glyphicon glyphicon-trash'></span> "));
                LinkButton l1 = new LinkButton();
                l1.Text = "Reject";
                l1.CommandName = dr[0].ToString();
                EventHandler eh1 = new EventHandler(reject_);
                l1.Click += eh1;
                l1.ForeColor = System.Drawing.Color.IndianRed;

                frndrequest.Controls.Add(l1);

                frndrequest.Controls.Add(new LiteralControl("</td>"));

                frndrequest.Controls.Add(new LiteralControl("</tr>"));


            }
            frndrequest.Controls.Add(new LiteralControl("</tbody></table></div>"));

            cmd.Dispose();
            cn.Close();
            if (count == 0)
            {

                frndrequest.Controls.Add(new LiteralControl("No Friend Request Found"));

            }
        }
        protected void accept(object sender, EventArgs e)
        {
        LinkButton b = (LinkButton)sender;

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open();
            string str12 = "update frndz set status =1 where  id='" + Int32.Parse(b.CommandName) + "'  ";
            SqlCommand cmd = new SqlCommand(str12, cn);
            int i = cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();

            Response.Redirect("Chat.aspx");
        }


        protected void reject_(object sender, EventArgs e)
        {
            LinkButton b = (LinkButton)sender;

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open();
            string str12 = "delete from frndz where id ='" + b.CommandName + "' ";
            SqlCommand cmd = new SqlCommand(str12, cn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();
            Response.Redirect("Chat.aspx");
        
        
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["unid"] == null)
            {


                Response.Redirect("Index.aspx");
            }
            else
            {

                return_ name = new return_();
                Label1.Text = name.bal_(Session["unid"].ToString(), "", 2);
                friendrequest();
                friendlist();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            return_ nn = new return_();
          String temp=  nn.bal_("unid",uid.Value,4);

          if (!temp.Equals("none") && (!uid.Value.Equals(Session["unid"].ToString())))
          {   newccreturn  t=new newccreturn();
          String new_my_temp = nn.bal_("unid", Session["unid"].ToString(), 4);
          if (t.val(Int32.Parse(new_my_temp), Int32.Parse(temp)).Equals("none"))
          {
              Label1.Text = t.val(Int32.Parse(new_my_temp), Int32.Parse(temp));




              SqlConnection cn = new SqlConnection();
              cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

              try
              {
                  cn.Open();

                  String s = "insert into frndz (sid,cid,status) values(@sid,@cid,@status)";
                  SqlCommand cmd = new SqlCommand(s, cn);
                  SqlParameter p = new SqlParameter("sid", Int32.Parse(new_my_temp));
                  SqlParameter p1 = new SqlParameter("cid", Int32.Parse(temp));
                  SqlParameter p2 = new SqlParameter("status", Int32.Parse("0"));


                  cmd.Parameters.Add(p);
                  cmd.Parameters.Add(p1);
                  cmd.Parameters.Add(p2);

                  cmd.ExecuteNonQuery();

                  cmd.Dispose();
                  cn.Close();

                  uid.Value = "";

                 Panel2.Visible = true;

                Panel1.Visible = false;

              }
              catch (Exception ee)
              {
                  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ee.Message + "')", true);
                 Panel2.Visible = true;
                  Label3.Text = ee.Message;
              }
          }
          else
          {
             Panel1.Visible = true;
              Label2.Text = "Friend Request already sent";
           Panel2.Visible = false;
          
          
          }

              






          }
          else {


             Panel1.Visible = true;
              Label2.Text = "Invalid Unique ID";
              Panel2.Visible = false;
          
          }
        }
    }
}