<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajaxfac.aspx.cs" Inherits="grmschool.ajaxfac" %>

<!DOCTYPE html>
<%@ Import Namespace=" MySql.Data.MySqlClient" %>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Web.Security" %>
<%@ Import Namespace="System.Web.UI.WebControls.WebParts"%>
<%@ Import Namespace="System.Web.UI.HtmlControls" %>
<%@ Import Namespace="System.Web.UI.WebControls" %>

<%
    
    
    
    return_salt re = new return_salt();
   string salt = re._salt();

   Class1 en_de = new Class1();
    
    string check1 = Request.QueryString["check1"];
    MySqlConnection cn = new MySqlConnection();
    cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

    if (check1 == "1")
    {
        string[] str1 = new string[100];
        cn.Open();
        str1 = Request.QueryString["m"].Split(',');

        for (int i = 0; i < str1.Length; i++)
        {
             MySqlCommand cmd1 = new  MySqlCommand("Update student set status1='1' where emailid='" + en_de.Encrypt(str1[i], salt) + "'", cn);
            cmd1.ExecuteNonQuery();
            cmd1.Dispose();

            try
            {
                using (MailMessage mm = new MailMessage("grmschool1@gmail.com", str1[i]))
                {
                    mm.Subject = "Message from www.grmschool.com";
                    mm.Body = "<html><body><div style='padding:35px;border-radius:4px;margin:10px;border-style:groove;border-width:2px;background-color:#2C7D74'><div style='text-align:center; font-size:large;color:green;background-color:white;padding:4px;'><div style='font-size:50px;font-family:initial'>GRM</div><strong style='font-size:x-large;color:darkcyan'>Welcome to the online world of GRM</strong><br/><div style='font-size:large;color:dodgerblue'>Your account is active now. Stay connected</div></div></body></html>";

                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential("grmschool1@gmail.com", "Grm@12345");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 25;
                    smtp.Send(mm);

                }
            }
            catch (Exception e1)
            {
             //   ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('" + e1.Message + "')", true);
            }

        }
        cn.Close();
        Response.Write(str1[0]);
    }
    else if (check1 == "2")
    {
        string[] str1 = new string[100];
        cn.Open();
        str1 = Request.QueryString["m"].Split(',');

        for (int i = 0; i < str1.Length; i++)
        {
             MySqlCommand cmd1 = new  MySqlCommand("Delete from student where emailid='" + en_de.Encrypt(str1[i], salt) + "'", cn);
            cmd1.ExecuteNonQuery();
            cmd1.Dispose();
            
             MySqlCommand cmd2 = new  MySqlCommand("Delete from attendance1 where emailid='" + en_de.Encrypt( str1[i] ,salt)+ "'", cn);
            cmd2.ExecuteNonQuery();
            cmd2.Dispose();
            
        }
        cn.Close();
        Response.Write(str1[0]);
    }



    else if (check1 == "3")
    {
        string[] str1 = new string[100];
        string[] str2 = new string[100];
        string currentmonth = "", currentattend = "";
        str1 = Request.QueryString["m"].Split(',');
        str2 = Request.QueryString["n"].Split(',');

        cn.Open();
        for (int i = 0; i < str1.Length; i++)
        {
            
            currentattend=str2[i]+"/"+Request.QueryString["p"];
             MySqlCommand cmd1 = new  MySqlCommand("select month1,attend,prev_attend from attendance1 where emailid='"+en_de.Encrypt( str1[i],salt)+"' ", cn);
             MySqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                if (dr[0].ToString() != "yet to be filled")
                {
                    currentmonth = dr[2].ToString() + "," + dr[0].ToString() + "_" + currentattend;
                }
                else
                {
                    if (Request.QueryString["o"] == dr[0].ToString())
                    {
                        Response.Redirect("Faculty.aspx");
                    }
                    else
                    {
                        currentmonth = dr[2].ToString();
                    }
                }
            }
            dr.Close();
            cmd1.Dispose();
             MySqlCommand cmd2 = new  MySqlCommand("Update attendance1 set facid='"+en_de.Encrypt(Session["uname"].ToString(),salt)+"', month1='"+Request.QueryString["o"]+"', attend='"+currentattend+"', prev_attend='"+currentmonth+"' where emailid='"+en_de.Encrypt( str1[i],salt)+"'",cn);
            cmd2.ExecuteNonQuery();
            cmd2.Dispose();
        }
        Response.Write("hey");
        cn.Close();
    }

    else if (check1 == "4")
        {
            string uname = "", pass = "", phno = "", emailid1 = "";
            uname = Request.QueryString["uname"];
            pass = Request.QueryString["pass"];
            phno = Request.QueryString["phno"];
            emailid1 = Request.QueryString["emailid1"];
            cn.Open();
             MySqlCommand cmd1 = new  MySqlCommand("Update student set name='" + uname + "', pass='" +en_de.Encrypt( pass,salt) + "', phno='" + en_de.Encrypt(phno,salt) + "' where emailid='" +en_de.Encrypt( emailid1,salt) + "'", cn);
            cmd1.ExecuteNonQuery();
            cn.Close();
            Response.Write("Done");

        }
    
%>
