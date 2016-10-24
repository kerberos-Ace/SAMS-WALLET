using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.user
{
    public partial class Gas_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["unid"] == null)
            {


                Response.Redirect("../Index.aspx");
            }
            else
            {return_ name = new return_();
                Label1.Text = name.bal_(Session["unid"].ToString(), "", 2);
                string status = "";
                string s = "";
            string mna = Request.Params["mname"].ToString();
            if (mna == "1") { a1.Attributes.Add("class", "btn btn-rw btn-success");
          
            s = " SELECT * FROM notification where sid='" + Session["unid"].ToString() + "' and (status='10' or status='11') order by id desc ";
            
            } else if (mna == "2") { a2.Attributes.Add("class", "btn btn-rw btn-success");
            s = " SELECT * FROM notification where sid='" + Session["unid"].ToString() + "' and  status='11' order by id desc ";
            
            } else if (mna == "3") { a3.Attributes.Add("class", "btn btn-rw btn-success");
            s = " SELECT * FROM notification where sid='" + Session["unid"].ToString() + "' and status='10'  order by id desc ";
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
   
            pane.Controls.Add(new LiteralControl("<th>Message</th>"));
            pane.Controls.Add(new LiteralControl("<th>Date</th>"));
            pane.Controls.Add(new LiteralControl("<th>Status</th>"));
        

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

                pane.Controls.Add(new LiteralControl("<td>"+dr[3].ToString()));

                pane.Controls.Add(new LiteralControl("</td>"));
                var sp=dr[5].ToString().Split(' ');
                pane.Controls.Add(new LiteralControl("<td>" +sp[0]));

                pane.Controls.Add(new LiteralControl("</td>"));

                if (dr[4].ToString() == "10") { status = "<h4><span class='label label-warning'>Pending</span></h4>"; }
                else if (dr[4].ToString() == "11") { status = "<h4><span class='label label-success'>Dispatched</span></h4>"; }

                pane.Controls.Add(new LiteralControl("<td>"+status));
               

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