using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.Admin
{
    public partial class Coupon_Details : System.Web.UI.Page
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
                coupons cou = new coupons();

                na_bar.Controls.Add(new LiteralControl(cou.coup_nav()));


                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                cn.Open();
                String s = " SELECT * FROM coupons  order by limit desc ";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                return_ name = new return_();


                int count = 0;
                int co = 0;
                while (dr.Read())
                {

                    count++;
                    co++;
                    string nam_ = name.bal_(dr[1].ToString(), "companyname", 9);
                    myPortfolio.Controls.Add(new LiteralControl(" <li onclick='' class='item " + nam_ + " col-sm-4'><div class='border'>"));


                    myPortfolio.Controls.Add(new LiteralControl("	<div class='view image-hover-1'>"));

                    myPortfolio.Controls.Add(new LiteralControl("<img class='img-responsive full-width' src='../images/coupons/" + count + ".jpg' >"));

                    myPortfolio.Controls.Add(new LiteralControl("<div class='mask'>   <div class='image-hover-content'>"));

                    myPortfolio.Controls.Add(new LiteralControl("<b><span class='badge' style='color:white;font-size:15px' ><b>Coupon Count : " + dr[4].ToString() + "</b></span>"));
                    myPortfolio.Controls.Add(new LiteralControl("</div></div> </div><div class='portfolio-text background-white'>	<h1 class='portfolio-title'> Get " + dr[2].ToString() + " % cashback </h1><div class='project-category'> "));

                    Button l = new Button();
                    l.Text = " Coupon - " + dr[3].ToString();

                    l.Attributes.Add("style", "margin-left:20px");
                    l.CssClass = "button button-glow button-rounded button-caution";

                    myPortfolio.Controls.Add(l);



                    myPortfolio.Controls.Add(new LiteralControl("</Div> </Div></div></li>"));


                    if (count == 3)
                    {
                        count = 0;
                    }

                }


                cmd.Dispose();
                cn.Close();

                if (co == 0)
                {
                    myPortfolio.Controls.Add(new LiteralControl("<div class='button button-glow button-rounded button-highlight'>No Coupons Found</div><br><br><b"));


                }













            }

        }
    }
}