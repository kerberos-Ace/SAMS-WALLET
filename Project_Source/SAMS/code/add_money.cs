using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.SqlClient;

    public class add_money
    {
        public add_money(string uid, float wallet,int status)
        {

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();
            cn.Open(); string str12 = "";

            if (status == 0)
            {
                str12 = "update signup set wallet =wallet+" + wallet + " where  unid='" + uid + "'  ";
            }
            if (status == 5)
            {
                str12 = "update signup set wallet =wallet-" + wallet + " where  unid='" + uid + "'  ";
            }
            else if (status == 1)
            {

                str12 = "update banker set bal =bal+" + wallet + " where  accno='" + uid + "'  ";
            }
            else if (status == 2)
            {

                str12 = "update signup set wallet =wallet-" + wallet + " where  unid='" + uid + "'  ";
            }
            else if (status == 3)
            {

                str12 = "update comp_reg set wallet =wallet+" + wallet + " where  id='" + uid + "'  ";
            }
            else if (status == 4)
            {

                str12 = "update coupons set limit =limit+" + wallet + " where  cocode='" + uid + "'  ";
            }
            SqlCommand cmd = new SqlCommand(str12, cn);
      cmd.ExecuteNonQuery();
        
            cn.Close();


        }



    }
