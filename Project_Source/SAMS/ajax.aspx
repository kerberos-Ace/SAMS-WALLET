<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajax.aspx.cs" Inherits="paytm.ajax" %>


<%@ Import Namespace=" System.Data.SqlClient" %>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Web.Security" %>

<%
    string check_status = Request.QueryString["status"].ToString();
   
    SqlConnection cn;
 
    if (check_status.Equals("end")) // Logout
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
       
        Response.Write("done");
    }

    else
        if (check_status.Equals("1-1") || check_status.Equals("1-2")) //  reset password 
        {
            
                  
            }  else
            if (check_status.Equals("2")) //  dropdown 
            {


                cn = new SqlConnection();
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["cnstring"].ToString();

                try
                {
                   
                    cn.Open();
                    String str = "select bal from banker where accno='" + Request.QueryString["email"].ToString() + "' ";
                    SqlCommand cmd = new SqlCommand(str, cn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {

                        Response.Write(dr[0].ToString());

                    }
                    else {

                        Response.Write("invalid");
                    }
                    cn.Close();

                }
                catch (Exception e)
                {
                    Response.Write("invalid");


                }
                finally
                {
                    cn.Close();

                }

            }
    
      
   
  
            
                  
%>
