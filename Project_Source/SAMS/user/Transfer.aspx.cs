using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.user
{
    public partial class Transfer : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            return_ ret = new return_();
            string name = ret.bal_(Acc.Value, "", 2);

            if (name.Equals("none"))
            {

                Panel1.Visible = true;
                Panel2.Visible = false;
                Label2.Text = "Unique Id doesnot exist ";

            }
            else if (!Text1.Value.Equals(Session["unid"].ToString()))
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Label2.Text = "Please enter your correct unique id ";


            }
            else
            {

                int cash = Int32.Parse(money.Text) - Int32.Parse(AddMoney.Value);
                if (cash > 0)
                {

                    add_money money1 = new add_money(Acc.Value, Int32.Parse(AddMoney.Value),0);
                    SqlConnection cn = new SqlConnection();
                    cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                    cn.Open();
                    string str12 = "update signup set wallet =wallet-" + Int32.Parse(AddMoney.Value) + " where  unid='" +Session["unid"].ToString()+ "'  ";
                    SqlCommand cmd = new SqlCommand(str12, cn);
                    cmd.ExecuteNonQuery();

                    cn.Close();
                    transaction tra = new transaction(Session["unid"].ToString(), "Transfered Rs " + AddMoney.Value + " to  " + name+" ("+Acc.Value+")", 2);
                    notification noyi = new notification(Session["unid"].ToString(),Acc.Value,Label1.Text+" ("+Session["unid"].ToString()+") Transfered Rs " + AddMoney.Value ,1);
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
            Response.Redirect("Transfer.aspx");

        }
    }
}