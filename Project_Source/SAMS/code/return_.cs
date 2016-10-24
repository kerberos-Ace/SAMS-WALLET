using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

    public class return_
    {


        public string bal_(string acc,string pass, int status)
        {
            string name = "none";
            String s = "";
           SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();


            if (status == 1)
            {
                s = "select bal from banker where accno = '" +acc + "' and pass='"+pass+"' ";
            }
            else if (status == 2)
            {

                s = "select name from signup where unid = '" + acc + "'  ";


            }
            else if (status == 3)
            {
                s = "select wallet from signup where unid = '" + acc + "'  ";


            }
            else if (status == 8)
            {
                s = "select wallet from signup where email = '" + acc + "'  ";


            }
            else if (status == 4)
            {


                s = "select * from signup where "+acc+"='"+pass+"'";
            }
            else if (status == 5)
            {

                s = "select pass from signup where unid = '" + acc + "'  ";


            }
            else if (status == 6)
            {

                s = "select "+pass+" from comp_reg where id = '" + acc + "'  ";


            }
            else if (status == 7)
            {

                s = "select discount from coupons where compid = '" + acc + "' and cocode='"+pass+"' ";


            }
            else if (status == 9)
            {

                s = "select companyname from comp_reg where id = '" + acc + "'  ";


            }
            else if (status == 10)
            {

                s = "select name from signup where unid = '" + acc + "'  ";


            }
         
         
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


        public void del(string value)
        {



            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open();

            string str12 = "delete from chat  where spid ='" + value + "' ";
            SqlCommand cmd = new SqlCommand(str12, cn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();


        }
    }