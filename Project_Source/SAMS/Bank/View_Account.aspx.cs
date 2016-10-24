using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.Bank
{
    public partial class View_Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {


                Response.Redirect("../Index.aspx");
            }
            else
            {


                Panel2.Visible = false;
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                cn.Open();
                String s = " SELECT * FROM banker order by bal desc ";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                pane.Controls.Add(new LiteralControl("<div class='table-responsive'>"));
                pane.Controls.Add(new LiteralControl("<table  class='table cart-table table-striped'>"));
                pane.Controls.Add(new LiteralControl("<thead>"));
                pane.Controls.Add(new LiteralControl("<tr>"));
                pane.Controls.Add(new LiteralControl("<th>S.No</th>"));
                pane.Controls.Add(new LiteralControl("<th>Bank Name</th>"));

                pane.Controls.Add(new LiteralControl("<th>Account Number</th>"));
                pane.Controls.Add(new LiteralControl("<th>Balance</th>"));
                pane.Controls.Add(new LiteralControl("<th>Password</th>"));
                pane.Controls.Add(new LiteralControl("<th>Delete</th>"));

                pane.Controls.Add(new LiteralControl("</tr>"));
                pane.Controls.Add(new LiteralControl("</thead>"));
                pane.Controls.Add(new LiteralControl("<tbody>"));

                int count = 0;
                while (dr.Read())
                {

                    count++;


                    pane.Controls.Add(new LiteralControl("<tr>"));
                    pane.Controls.Add(new LiteralControl("<td>"));
                    pane.Controls.Add(new LiteralControl("<span class='pill medium green'>" + count + "</span>"));
                    pane.Controls.Add(new LiteralControl("</td>"));

                    pane.Controls.Add(new LiteralControl("<td>" + dr[4].ToString()));

                    pane.Controls.Add(new LiteralControl("</td>"));
                    pane.Controls.Add(new LiteralControl("<td>" + dr[1].ToString()));

                    pane.Controls.Add(new LiteralControl("</td>"));
                    pane.Controls.Add(new LiteralControl("<td>" + dr[3].ToString()));
                    int length = dr[2].ToString().Length;
                    string pass = "";
                    for (int i = 0; i < length; i++)
                    {

                        pass = pass + "*";
                    }

                    pane.Controls.Add(new LiteralControl("</td>"));
                    pane.Controls.Add(new LiteralControl("<td>" + pass));

                    pane.Controls.Add(new LiteralControl("</td>"));
                    pane.Controls.Add(new LiteralControl("<td>"));
                    Button l = new Button();
                    l.Text = "Delete";
                    l.CommandName = dr[0].ToString();
                    EventHandler eh = new EventHandler(delete);
                    l.Click += eh;
                    l.Attributes.Add("class", "button button-3d button-caution");


                    pane.Controls.Add(l);

                    pane.Controls.Add(new LiteralControl("</td>"));

                    pane.Controls.Add(new LiteralControl("</tr>"));


                }
                pane.Controls.Add(new LiteralControl("</tbody></table></div>"));

                cmd.Dispose();
                cn.Close();
                if (count == 0)
                {

                    pane.Controls.Add(new LiteralControl("No Account found"));

                }
            }
        }

        protected void delete(object sender, EventArgs e)
        {
            Button b = (Button)sender;



            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open();
            string str12 = "delete from banker where id ='" + b.CommandName + "' ";
            SqlCommand cmd = new SqlCommand(str12, cn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();
            Panel2.Visible = true;
        }
    }
}