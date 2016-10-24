using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace paytm
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            maill m = new maill();
            string stt = m.send_maill(name1.Value, email1.Value, Message1.Value, 4);
            if (stt == "done")
            {


                Label2.Text = "Information has been sent";

            }
            else
            {

                Label2.Text = "Connection Problem";
            }
            name1.Value = ""; email1.Value = ""; Message1.Value = "";
            Panel1.Visible = true;
        }
    }
}