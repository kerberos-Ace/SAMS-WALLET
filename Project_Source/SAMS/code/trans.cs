using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

    public class trans
    {

        public trans( string unid,string message,string status) { 
         try
            {
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

                cn.Open();
            
              

                String s = "insert into trans values(@sid,@tran_mess,@status)";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlParameter p = new SqlParameter("sid", unid);
                SqlParameter p1 = new SqlParameter("tran_mess", message);
                SqlParameter p2 = new SqlParameter("status", status);

               

                cmd.Parameters.Add(p);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
               

                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();

            }
            catch (Exception ew)
            {
          
            
            }
        }  
    
    
        
       

    }
}