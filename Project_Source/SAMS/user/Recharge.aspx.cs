using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace paytm.user
{
    public partial class Recharge : System.Web.UI.Page
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

                if (!IsPostBack)
                {

                    DropDownList1.Items.Add(new ListItem("Select Operator", ""));

                    SqlConnection cn = new SqlConnection();
                    cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

                    cn.Open();
                    String str = "select * from comp_reg ";
                    SqlCommand cmd = new SqlCommand(str, cn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {

                        DropDownList1.Items.Add(new ListItem(dr[1].ToString().ToUpper(), dr[0].ToString()));



                    }
                    cn.Close();

                }

            }
        }
      
    

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string temp = "";
            float amount=0;
            int status=0;
            return_ re = new return_();
            Panel1.Visible = false;
            Panel2.Visible = false;
            int cash = Int32.Parse(re.bal_(Session["unid"].ToString(), "", 3)) - Int32.Parse(AddMoney.Value);
                if (cash > 0)
                {

           
            if (coupon.Value.Length > 0)
            {
              
                temp = re.bal_(DropDownList1.SelectedValue.ToString(), coupon.Value, 7);
           
                if (temp != "none")
                {

                    float discount = float.Parse(temp)/100;
                   
                    amount =float.Parse(AddMoney.Value)-(float.Parse(AddMoney.Value) * discount);

                    add_money limi = new add_money(coupon.Value,1, 4);
                   status = 4;
                }
                else
                {


                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    Label2.Text = "Invalid Coupon ";
                }
            }
            else
            {
                status = 5;

                amount = float.Parse(AddMoney.Value);

            }

         

            if (status == 4) {
                transaction tr = new transaction(Session["unid"].ToString(), "Recharge of Rs " + AddMoney.Value + ". Operator - " + DropDownList1.SelectedItem + ". Discount  " + temp + "%" + ". Phone no - " + pno.Value + ".", status);
                notification noti = new notification(Session["unid"].ToString(), DropDownList1.SelectedValue, "Recharge from " + Label1.Text + " of Rs " + AddMoney.Value + ". Discount  " + temp + "% " + ". Phone no - " + pno.Value + ".", 50);
            }
            else if (status == 5) {

                transaction tr = new transaction(Session["unid"].ToString(), "Recharge of Rs " + AddMoney.Value + ". Operator - " + DropDownList1.SelectedItem + ". Phone no - " + pno.Value + ".", status);
                notification noti = new notification(Session["unid"].ToString(), DropDownList1.SelectedValue, "Recharge from " + Label1.Text + " of Rs " + AddMoney.Value + ". Phone no - " + pno.Value + ".", 51);
            
            }
            if (status == 4 || status == 5)
            {


                add_money mon = new add_money(Session["unid"].ToString(), amount, 2);

                add_money mon1 = new add_money(DropDownList1.SelectedValue.ToString(), amount, 3);
                Panel2.Visible = true;
                Panel1.Visible = false;


            }



            }

                else
                {
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    Label2.Text = "You have insufficient balance";

                }


        }
    }
}