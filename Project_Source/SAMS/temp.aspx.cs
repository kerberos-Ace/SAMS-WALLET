using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;

namespace paytm
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

   
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

                cn.Open();

                DateTime time = DateTime.Parse(Date2.Value);
                Response.Write(time.ToString("yyyy-dd-MM"));


                String str = "select * from trans where tran_date='" + time.ToString("yyyy-dd-MM") + "'";
                SqlCommand cmd = new SqlCommand(str, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {


                    Response.Write("9<br>");


                } cn.Close();
            }

            catch (Exception ee)
            {


                Response.Write( ee.Message);
            }
          
         
        }
    }}
    
