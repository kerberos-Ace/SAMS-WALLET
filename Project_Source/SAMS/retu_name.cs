using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


    public class retu_name
    {
        public string name_(int id)
        {
         string name = "";

          SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

                String s = "select name from signup where id = '"+id+"'  ";


                cn.Open();
               
               SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    name = dr[0].ToString();
                }
                cmd.Dispose();
                cn.Close();



            return name;
        
        
        
      
}
}