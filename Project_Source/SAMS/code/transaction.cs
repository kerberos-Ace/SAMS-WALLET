using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


    public class transaction
    {


        public transaction(string sid,string tran_mess,int status)
        {


            try
            {
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

                cn.Open();

                maill mailll = new maill();

                String s = "insert into trans values(@sid,@tran_mess,@tran_date,@status)";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlParameter p = new SqlParameter("sid", sid);
                SqlParameter p1 = new SqlParameter("tran_mess", tran_mess);
                SqlParameter p2 = new SqlParameter("tran_date", DateTime.Now.Date.ToString("yyyy-MM-dd"));           
                SqlParameter p3 = new SqlParameter("status",status);
              


                cmd.Parameters.Add(p);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.Parameters.Add(p3);
          

                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();
             
            }
            catch (Exception ew)
            {
                HttpContext.Current.Response.Write(ew.Message);

            }


        }




}