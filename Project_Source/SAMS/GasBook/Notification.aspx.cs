using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.GasBook
{
    public partial class Notification : System.Web.UI.Page
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
                return_ name = new return_();
                Label1.Text = "GAS";
        
                string s = "";
                string mna = Request.Params["mname"].ToString();
                if (mna == "1")
                {
                    a1.Attributes.Add("class", "btn btn-rw btn-success");

                    s = " SELECT * FROM notification where rid='gas' and (status='10' or status='11') order by id desc ";

                }
                else if (mna == "2")
                {
                    a2.Attributes.Add("class", "btn btn-rw btn-success");
                    s = " SELECT * FROM notification where rid='gas' and  status='11' order by id desc ";

                }
                else if (mna == "3")
                {
                    a3.Attributes.Add("class", "btn btn-rw btn-success");
                    s = " SELECT * FROM notification where rid='gas' and status='10'  order by id desc ";
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
                pane.Controls.Add(new LiteralControl("<th>User's Unique Id</th>"));
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
                    pane.Controls.Add(new LiteralControl("<td>" + dr[1].ToString()));

                    pane.Controls.Add(new LiteralControl("</td>"));

                    pane.Controls.Add(new LiteralControl("<td>" + dr[3].ToString()));

                    pane.Controls.Add(new LiteralControl("</td>"));
                    var sp = dr[5].ToString().Split(' ');
                    pane.Controls.Add(new LiteralControl("<td>" + sp[0]));

                    pane.Controls.Add(new LiteralControl("</td><td>"));

                    if (dr[4].ToString() == "10") {



                        Button l = new Button();
                        l.Text = "Dispatch";
                        l.CommandName = dr[0].ToString();
                        EventHandler eh = new EventHandler(delete);
                        l.Click += eh;
                        l.Attributes.Add("class", "button button-3d button-royal");


                        pane.Controls.Add(l);

                    
                    
                    }
                    else if (dr[4].ToString() == "11") { 
                    pane.Controls.Add(new LiteralControl("<h4><span class='label label-success'>Dispatched</span></h4>" ));
                    
                    }

               


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
        protected void delete(object sender, EventArgs e)
        {
            Button b = (Button)sender;



            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open();
            string str12 = "update notification set status ='11' where  id='" + b.CommandName + "'  ";
            SqlCommand cmd = new SqlCommand(str12, cn);
            cmd.ExecuteNonQuery();


            cmd.Dispose();
            cn.Close();;
            Panel2.Visible = true;
        }
    }
}