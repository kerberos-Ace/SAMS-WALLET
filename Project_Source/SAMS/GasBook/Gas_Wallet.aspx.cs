using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.GasBook
{
    public partial class Gas_Wallet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {


                Response.Redirect("../Index.aspx");
            }
            else
            {

                return_ name = new return_();
                Label1.Text = "GAS";

                money.Text = name.bal_(Session["email"].ToString(), "", 8);


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            return_ ret = new return_();
            string bal = ret.bal_(Acc.Value, Text1.Value, 1);
            if (bal == "none")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Label2.Text = "Credentials are wrong ";

            }
            else
            {

                int cash = Int32.Parse(money.Text) - Int32.Parse(AddMoney.Value);
                if (cash > 0)
                {

                    add_money money1 = new add_money(Acc.Value, Int32.Parse(AddMoney.Value), 1);
                    SqlConnection cn = new SqlConnection();
                    cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                    cn.Open();
                    string str12 = "update signup set wallet =wallet-" + Int32.Parse(AddMoney.Value) + " where  email='" + Session["email"].ToString() + "'  ";
                    SqlCommand cmd = new SqlCommand(str12, cn);
                    cmd.ExecuteNonQuery();

                    cn.Close();
                    Panel1.Visible = false;
                    Panel2.Visible = true;


                }
                else
                {

                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    Label2.Text = "You have insufficient balance";
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("Gas_Wallet.aspx");
        }
    }
}