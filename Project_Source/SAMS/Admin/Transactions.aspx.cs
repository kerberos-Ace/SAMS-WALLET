using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace paytm.Admin
{
    public partial class Transactions : System.Web.UI.Page
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

                if (!IsPostBack)
                {



                    SqlConnection cn = new SqlConnection();
                    cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                    cn.Open();
                    String s = " SELECT * FROM trans  order by id desc";

                    return_ name = new return_();




                    SqlCommand cmd = new SqlCommand(s, cn);
                    SqlDataReader dr = cmd.ExecuteReader();


                    int count = 0;
                    while (dr.Read())
                    {

                        count++;
                        //  
                        if (dr[4].ToString() == "1")
                        {
                            pane.Controls.Add(new LiteralControl("<div class='alert alert-success alert-success-rw alert-dismissible' role='alert'>"));

                        }
                        else if (dr[4].ToString() == "2")
                        {
                            pane.Controls.Add(new LiteralControl("<div class='alert alert-info alert-info-rw alert-dismissible' role='alert'>"));
                        }
                        else if (dr[4].ToString() == "3")
                        {
                            pane.Controls.Add(new LiteralControl("<div class='alert alert-warning alert-warning-rw alert-dismissible' role='alert'>"));
                        }
                        else if (dr[4].ToString() == "4")
                        {

                            pane.Controls.Add(new LiteralControl("<div class='alert alert-danger alert-danger-rw alert-dismissible' role='alert'>"));
                        }
                        else if (dr[4].ToString() == "5")
                        {

                            pane.Controls.Add(new LiteralControl("<div class='alert alert-clear alert-dismissible' role='alert'>"));


                        }

                        String namee = name.bal_(dr[1].ToString(), "", 10) + " (" + dr[1].ToString() + ")";
                        string na=namee;
                        if (dr[4].ToString() == "5")
                        {
                            namee = "<span style='Color:black'>" + na + "</span>";
                        
                        }

                        pane.Controls.Add(new LiteralControl("<button type='button' class='close' data-dismiss='alert'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button>"));
                        var sp = dr[3].ToString().Split(' ');
                        pane.Controls.Add(new LiteralControl("<h4> <span class='label' >" + namee + "</span><span class='label' style='float:right' >       " + sp.First() + "</span></h4>"));
                        pane.Controls.Add(new LiteralControl("<b>" + dr[2].ToString() + "</b></div>"));

                    }
                    cmd.Dispose();
                    cn.Close();
                    if (count == 0)
                    {


                        pane.Controls.Add(new LiteralControl("<div class='alert alert-info alert-info-rw' role='alert'><b>Look ahead!</b> No Transactions Found.</div>"));
                    }
                }
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            pane.Controls.Clear();
            try
            {
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                cn.Open();

                String s = "";
                DateTime time = DateTime.Parse(d2.Value);

                DateTime time2 = DateTime.Parse(Date1.Value);



                if (DropDownList1.SelectedValue == "0")
                {

                    if (u_name.Value.Length > 0)
                    {
                        s = " SELECT * FROM trans where sid='"+u_name.Value+"' and tran_date between '" + time.ToString("yyyy-MM-dd") + "' and '" + time2.ToString("yyyy-MM-dd") + "'  order by id desc ";
                    }
                    else
                    {

                        s = " SELECT * FROM trans where tran_date between '" + time.ToString("yyyy-MM-dd") + "' and '" + time2.ToString("yyyy-MM-dd") + "'  order by id desc ";
                    }
                }
                else if (DropDownList1.SelectedValue == "6")
                {

                    if (u_name.Value.Length > 0)
                    {
                        s = " SELECT * FROM trans where  sid='" + u_name.Value + "' and tran_date between '" + time.ToString("yyyy-MM-dd") + "' and '" + time2.ToString("yyyy-MM-dd") + "' and ( status='4' or status='5') order by id desc ";
                    }
                    else { 
                    s = " SELECT * FROM trans where tran_date between '" + time.ToString("yyyy-MM-dd") + "' and '" + time2.ToString("yyyy-MM-dd") + "' and ( status='4' or status='5') order by id desc ";
                    }
                }
                else
                {

                    if (u_name.Value.Length > 0)
                    {

                        s = " SELECT * FROM trans where sid='" + u_name.Value + "' and tran_date between '" + time.ToString("yyyy-MM-dd") + "' and '" + time2.ToString("yyyy-MM-dd") + "' and status='" + DropDownList1.SelectedValue + "' order by id desc ";
                    }
                    else
                    {
                        s = " SELECT * FROM trans where tran_date between '" + time.ToString("yyyy-MM-dd") + "' and '" + time2.ToString("yyyy-MM-dd") + "' and status='" + DropDownList1.SelectedValue + "' order by id desc ";
                    }
                }



                return_ name = new return_();




                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader dr = cmd.ExecuteReader();


                int count = 0;
                while (dr.Read())
                {

                    count++;
                    //  
                    if (dr[4].ToString() == "1")
                    {
                        pane.Controls.Add(new LiteralControl("<div class='alert alert-success alert-success-rw alert-dismissible' role='alert'>"));

                    }
                    else if (dr[4].ToString() == "2")
                    {
                        pane.Controls.Add(new LiteralControl("<div class='alert alert-info alert-info-rw alert-dismissible' role='alert'>"));
                    }
                    else if (dr[4].ToString() == "3")
                    {
                        pane.Controls.Add(new LiteralControl("<div class='alert alert-warning alert-warning-rw alert-dismissible' role='alert'>"));
                    }
                    else if (dr[4].ToString() == "4")
                    {

                        pane.Controls.Add(new LiteralControl("<div class='alert alert-danger alert-danger-rw alert-dismissible' role='alert'>"));
                    }
                    else if (dr[4].ToString() == "5")
                    {

                        pane.Controls.Add(new LiteralControl("<div class='alert alert-clear alert-dismissible' role='alert'>"));


                    }

                    String namee = name.bal_(dr[1].ToString(), "", 10) + " (" + dr[1].ToString() + ")";
                    string na = namee;
                    if (dr[4].ToString() == "5")
                    {
                        namee = "<span style='Color:black'>" + na + "</span>";

                    }


                    pane.Controls.Add(new LiteralControl("<button type='button' class='close' data-dismiss='alert'><span aria-hidden='true'>&times;</span><span class='sr-only'>Close</span></button>"));
                    var sp = dr[3].ToString().Split(' ');
                    pane.Controls.Add(new LiteralControl("<h4> <span class='label' >" + namee + "</span><span class='label' style='float:right' >       " + sp.First() + "</span></h4>"));
                    pane.Controls.Add(new LiteralControl("<b>" + dr[2].ToString() + "</b></div>"));

                }
                cmd.Dispose();
                cn.Close();
                if (count == 0)
                {


                    pane.Controls.Add(new LiteralControl("<div class='alert alert-info alert-info-rw' role='alert'><b>Look ahead!</b> No Transactions Found For This Filter.</div>"));
                }

            }
            catch (Exception eqw)
            {

                Response.Write(eqw.Message);

            }
        }
    }
}