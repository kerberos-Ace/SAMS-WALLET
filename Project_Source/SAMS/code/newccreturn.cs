using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


    public class newccreturn
    {
        public string val(int sid,int cid)
        {
            string ret_val = "none";
            string s = " SELECT id FROM frndz where (sid="+sid+" and cid="+cid+") or (sid="+cid+" and cid="+sid+") ";

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open();

            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader dr = cmd.ExecuteReader();


            while (dr.Read())
            {

                ret_val = dr[0].ToString();


            }










            cmd.Dispose();
            cn.Close();




            return ret_val;

        


        
        
        
        
        }



}