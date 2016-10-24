using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace paytm.Company
{
    public partial class Notification : System.Web.UI.Page
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
          
                string s = "";
                string mna = Request.Params["mname"].ToString();
                if (mna == "1")
                {
                    a1.Attributes.Add("class", "btn btn-rw btn-success");

                    s = " SELECT * FROM notification where rid='" + Session["id"].ToString() + "'  order by id desc ";

                }
                else if (mna == "2")
                {
                    a2.Attributes.Add("class", "btn btn-rw btn-success");
                    s = " SELECT * FROM notification where rid='" + Session["id"].ToString() + "' and  status='51' order by id desc ";

                }
                else if (mna == "3")
                {
                    a3.Attributes.Add("class", "btn btn-rw btn-success");
                    s = " SELECT * FROM notification where rid='" + Session["id"].ToString() + "' and  status='50' order by id desc ";
                }
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                cn.Open();

                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                pane.Controls.Add(new LiteralControl("<div class='table-responsive'>"));
                pane.Controls.Add(new LiteralControl("<table  class='table cart-table table-striped'>"));
                pane.Controls.Add(new LiteralControl("<thead>"));
                pane.Controls.Add(new LiteralControl("<tr>"));
                pane.Controls.Add(new LiteralControl("<th>S.No</th>"));
                pane.Controls.Add(new LiteralControl("<th>User's Unique ID</th>"));
                pane.Controls.Add(new LiteralControl("<th>Message</th>"));
                pane.Controls.Add(new LiteralControl("<th>Date</th>"));
          


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
                    pane.Controls.Add(new LiteralControl("<td>" + dr[1].ToString()));

                    pane.Controls.Add(new LiteralControl("</td>"));

                    pane.Controls.Add(new LiteralControl("<td>" + dr[3].ToString()));

                    pane.Controls.Add(new LiteralControl("</td>"));
                    var sp = dr[5].ToString().Split(' ');
                    pane.Controls.Add(new LiteralControl("<td>" + sp[0]));

                    pane.Controls.Add(new LiteralControl("</td>"));

                 


                    pane.Controls.Add(new LiteralControl("</tr>"));


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