using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


    public class coupons
    {

        public string coup_nav()
        {
            string ret_val = "";
            string s = " SELECT companyname FROM comp_reg   order by companyname ";
            
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
                cn.Open();

                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader dr = cmd.ExecuteReader();
             

                while (dr.Read())
                {

                    ret_val = ret_val + "	<li class='filter' data-filter='"+dr[0].ToString()+"'>"+dr[0].ToString()+"</li>";

                   
                    }

               


                   


                
               

                cmd.Dispose();
                cn.Close();




                return ret_val;

        


    }
}