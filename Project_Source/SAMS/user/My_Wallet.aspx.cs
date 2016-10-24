using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm
{
    public partial class My_Wallet : System.Web.UI.Page
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
            string bal = ret.bal_(Acc.Value, pass.Value, 1);

            if (bal == "none")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Label2.Text = "Credentials are wrong ";

            }
            else
            {

                int new_bal = Int32.Parse(bal) - Int32.Parse(AddMoney.Value);
                if (new_bal >= 0)
                {

                    add_money money = new add_money(Session["unid"].ToString(), Int32.Parse(AddMoney.Value),0);
                    SqlConnection cn = new SqlConnection();
                    cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                    cn.Open();
                    string str12 = "update banker set bal =bal-" + Int32.Parse(AddMoney.Value) + " where  accno='" + Acc.Value + "'  ";
                    SqlCommand cmd = new SqlCommand(str12, cn);
                    cmd.ExecuteNonQuery();

                    cn.Close();

                    transaction tra = new transaction(Session["unid"].ToString(),"Transfered Rs "+ AddMoney.Value+" from account no "+Acc.Value,1);

                    Panel1.Visible = false;
                    Panel2.Visible = true;


                }
                else
                {

                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    Label2.Text = "Your bank has insufficient balance";
                }



            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            AddMoney.Value = "";
            Acc.Value = "";
            pass.Value = "";
        }
    }
}