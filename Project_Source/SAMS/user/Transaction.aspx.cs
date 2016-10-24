using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace paytm.user
{
    public partial class Transaction : System.Web.UI.Page
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
            
            int msnme=Int32.Parse(Request.Params["mname"].ToString());
        if (!IsPostBack)
        {
            DropDownList1.SelectedValue =msnme.ToString();
        }   

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open();
             String s="";
            if (msnme == 0)
            {
                s = " SELECT * FROM trans where sid='"+Session["unid"].ToString()+"' order by id desc ";
            }
            else if (msnme == 6)
            {
                s = " SELECT * FROM trans where sid='" + Session["unid"].ToString() + "' and (status='4' or status='5') order by id desc ";

            }
            else {
            
            s = " SELECT * FROM trans where sid='" + Session["unid"].ToString() + "' and status='"+msnme+"'";
            
            }


          
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader dr = cmd.ExecuteReader();
  

            int count = 0;
            while (dr.Read())
            {

                count++;
               //  
                if (dr[4].ToString() == "1") {
                    pane.Controls.Add(new LiteralControl("<div class='alert alert-success alert-success-rw alert-dismissible' role='alert'>"));
                
                }
                else if (dr[4].ToString() == "2") {
                    pane.Controls.Add(new LiteralControl("<div class='alert alert-info alert-info-rw alert-dismissible' role='alert'>"));
                }
                else if (dr[4].ToString() == "3") {
                    pane.Controls.Add(new LiteralControl("<div class='alert alert-warning alert-warning-rw alert-dismissible' role='alert'>"));
                }
                else if (dr[4].ToString() == "4") {

                    pane.Controls.Add(new LiteralControl("<div class='alert alert-danger alert-danger-rw alert-dismissible' role='alert'>"));
                }
                else if (dr[4].ToString() == "5")
                {

                    pane.Controls.Add(new LiteralControl("<div class='alert alert-clear alert-dismissible' role='alert'>"));


                }

               

                    pane.Controls.Add(new LiteralControl("<button type='button' class='close' data-dismiss='alert'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button>"));
                 var sp=dr[3].ToString().Split(' ');
                 string  namee=sp.First();
                string na = namee;
                if (dr[4].ToString() == "5")
                {
                    namee = "<span style='Color:black'>" + na + "</span>";

                }
           pane.Controls.Add(new LiteralControl("<h4> <span class='label' >"+namee+"</span></h4>"));
           pane.Controls.Add(new LiteralControl("<b>"+dr[2].ToString()+"</b></div>"));

            }
            cmd.Dispose();
            cn.Close();
            if (count == 0)
            {


                pane.Controls.Add(new LiteralControl("<div class='alert alert-info alert-info-rw' role='alert'><b>Look ahead!</b> No Transactions Found.</div>"));
            }

        }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Transaction.aspx?mname="+DropDownList1.SelectedValue);
        }
    }
}