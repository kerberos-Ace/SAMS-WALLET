using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.user
{
    public partial class Gas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["unid"] == null)
            {


                Response.Redirect("../Index.aspx");
            }
            else
            {

                return_ name = new return_();
                Label1.Text = name.bal_(Session["unid"].ToString(), "", 2);

                money.Text = name.bal_(Session["unid"].ToString(), "", 3);


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;

             int cash = Int32.Parse(money.Text) - Int32.Parse(AddMoney.Value);
             if (cash > 0)
             {


                 if (Session["unid"].ToString() == Acc.Value)
                 {


                     add_money mon = new add_money(Session["unid"].ToString(),float.Parse( AddMoney.Value), 5);

                     add_money mon1 = new add_money("gas", float.Parse(AddMoney.Value), 0);

                     transaction tr = new transaction(Session["unid"].ToString(), "Gas is booked. Rs " + AddMoney.Value,3 );

                     notification noti = new notification(Session["unid"].ToString(), "gas", "Gas booked from " + Label1.Text + ". Rs " + AddMoney.Value , 10);


                     Panel2.Visible = true;
                     Panel1.Visible = false;

                 }
                 else {


                     Panel1.Visible = true;
                     Panel2.Visible = false;
                     Label2.Text = "Incorrect Unique ID";
                 }


             }
             else
             {
                 Panel1.Visible = true;
                 Panel2.Visible = false;
                 Label2.Text = "You have insufficient balance";

             }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Gas_Book.aspx");
        }
    }
}