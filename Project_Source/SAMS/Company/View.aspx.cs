using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace paytm.Company
{
    public partial class View : System.Web.UI.Page
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

                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                cn.Open();
                String s = " SELECT * FROM coupons where compid='" + Session["id"].ToString() + "' order by limit desc ";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader dr = cmd.ExecuteReader();


                int count = 0;
                int co = 0;
                while (dr.Read())
                {
                    if (count == 0)
                    {
                        pane.Controls.Add(new LiteralControl("<div class='row'>"));
                        pane.Controls.Add(new LiteralControl("<div class='col-sm-12'>"));

                    }
                    count++;
                    co++;
                    pane.Controls.Add(new LiteralControl("<div class='col-lg-4 col-md-4 col-sm-6 mb30'>"));

                    pane.Controls.Add(new LiteralControl("<div class='view image-hover-1 no-margin'><div class='product-container'>"));
                    pane.Controls.Add(new LiteralControl("<img class='img-responsive full-width' src='../images/coupons/" + count + ".jpg' >"));
                    pane.Controls.Add(new LiteralControl("<span class='badge'>" + dr[2].ToString() + "% OFF</span>	</div>"));

                    pane.Controls.Add(new LiteralControl("<div class='mask'><div class='image-hover-content'>"));
                    pane.Controls.Add(new LiteralControl("<span style='color:white;font-size:24px' ><b>Coupon Count : " + dr[4].ToString() + "</b></span>"));
                    pane.Controls.Add(new LiteralControl("</div></div></div>"));
                    pane.Controls.Add(new LiteralControl("<div class='shop-product content-box-shadow'>"));
                    pane.Controls.Add(new LiteralControl("  <div style='text-align:center'>	<h4>Get " + dr[2].ToString() + " % cashback </h4></div>"));
                    Button l = new Button();
                    l.Text = "Delete Coupon - " + dr[3].ToString();
                    l.CommandName = dr[0].ToString();
                    EventHandler eh = new EventHandler(delete);
                    l.Click += eh;
                    l.Attributes.Add("style", "margin-left:20px");
                    l.CssClass = "button button-glow button-rounded button-caution";

                    pane.Controls.Add(l);



                    pane.Controls.Add(new LiteralControl("</Div></Div>"));


                    if (count == 3)
                    {
                        count = 0;
                        pane.Controls.Add(new LiteralControl("</div>"));
                        pane.Controls.Add(new LiteralControl("</div>"));

                    }


                }


                cmd.Dispose();
                cn.Close();

                if (co == 0)
                {
                    pane.Controls.Add(new LiteralControl("<div class='button button-glow button-rounded button-highlight'>No Coupons Found</div><br><br><b"));


                }
            }
        }







        protected void delete(object sender, EventArgs e)
        {
            Button b = (Button)sender;



            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open();
            string str12 = "delete from coupons where id ='" + b.CommandName + "' ";
            SqlCommand cmd = new SqlCommand(str12, cn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();
            Panel1.Visible = true;
        }




    }
}