using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.Admin
{
    public partial class Users_Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {


                Response.Redirect("../Index.aspx");
            }
            else
            {

                Label1.Text = "Administrator";



                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                cn.Open();
                String s = " SELECT * FROM signup  order by id desc ";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                pane.Controls.Add(new LiteralControl("<div class='table-responsive'>"));
                pane.Controls.Add(new LiteralControl("<table  class='table cart-table table-striped'>"));
                pane.Controls.Add(new LiteralControl("<thead>"));
                pane.Controls.Add(new LiteralControl("<tr>"));
                pane.Controls.Add(new LiteralControl("<th>S.No</th>"));
                pane.Controls.Add(new LiteralControl("<th>Unique Id</th>"));
                pane.Controls.Add(new LiteralControl("<th>Name</th>"));
                pane.Controls.Add(new LiteralControl("<th>Email</th>"));
                pane.Controls.Add(new LiteralControl("<th>Phone</th>"));
                pane.Controls.Add(new LiteralControl("<th>Wallet</th>"));
                pane.Controls.Add(new LiteralControl("</tr>"));
                pane.Controls.Add(new LiteralControl("</thead>"));
                pane.Controls.Add(new LiteralControl("<tbody>"));

                int count = 0;
                while (dr.Read())
                {
                    if (dr[2].ToString() != "admin@admin" && dr[2].ToString() != "fake@bank" && dr[2].ToString() != "gas@book")
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
                        pane.Controls.Add(new LiteralControl("<td>" + dr[2].ToString()));

                        pane.Controls.Add(new LiteralControl("</td>"));
                        pane.Controls.Add(new LiteralControl("<td>" + dr[3].ToString()));

                        pane.Controls.Add(new LiteralControl("</td>"));
                        pane.Controls.Add(new LiteralControl("<td>" + dr[6].ToString()));

                        pane.Controls.Add(new LiteralControl("</td>"));

                        pane.Controls.Add(new LiteralControl("</tr>"));
                    }

                }
                pane.Controls.Add(new LiteralControl("</tbody></table></div>"));

                cmd.Dispose();
                cn.Close();
                if (count == 0)
                {

                    pane.Controls.Add(new LiteralControl("No Record found"));

                }
            }
        }
    }
}