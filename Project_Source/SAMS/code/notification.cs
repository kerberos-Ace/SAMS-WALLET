using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


    public class notification
    {
        public notification(string sid,string rid,string message,int status) {


            try
            {
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

                cn.Open();

                maill mailll = new maill();

                String s = "insert into notification values(@sid,@rid,@message,@status,@dat)";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlParameter p = new SqlParameter("sid", sid);
                SqlParameter p1 = new SqlParameter("rid", rid);
                SqlParameter p2 = new SqlParameter("message", message);
                SqlParameter p3 = new SqlParameter("status", status);
                SqlParameter p4 = new SqlParameter("dat", DateTime.Now.Date.ToString("yyyy-MM-dd"));


                cmd.Parameters.Add(p);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.Parameters.Add(p3);
                cmd.Parameters.Add(p4);

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
