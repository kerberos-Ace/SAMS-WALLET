using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Net;
using System.Net.Mail;
using System;


    public class maill
    {

        public String passw()
        {
            String str = "qwertyuioplkjhgfdsazxcvbnm1234567890";
            Random rd = new Random();
            String pass = "";

            for (int i = 0; i < 5; i++)
            {
                int rda = rd.Next(36);
                pass = pass + str[rda];

            }
            return pass;

        }

        public String unid()
        {
            String str = "1234567890";
            Random rd = new Random();
            String pass = "";

            for (int i = 0; i < 4; i++)
            {
                int rda = rd.Next(9);
                pass = pass + str[rda];

            }
            return pass;

        }




        public string send_maill(string name, string email, string message, int status)
        {
            String stt = passw();
            string htmlBody = "";
            if (status == 1)    // register   name
            {
                htmlBody = @"
<html lang=""en"">
   
    <body>
  <div>
    
       <div style='border-top-left-radius:5px;background-color:#0D7E71;color:white; width: 511px; margin-left: 224px;'>
          <div style=' background-color:#2d95bb;'>  <p style=' float:left;padding:10px ;font-family: roboto;font-size:large'><b>Hi " + name + @" <b></p>
              <p style='float:right;font-family: roboto;padding:10px; font-size:medium''>Posted on :   " + DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString() + @" </p><br />
              <br />
              <br /><br />

          </div>          <p style='border-radius:5px; margin-left: 60px;font-size:medium;'>Welcome ,<br> You are sucessfully registered .<br>"+message+" <br>Your Password : " + stt + @"

          <br/>
             <br/><br/>
       
             
      </p>
          
            
        
      </div>
      
    </div>
    </body>
</html>
";
            }
            else if (status == 2)  // reset password  message = password
            {



                htmlBody = @"
<html lang=""en"">
   
    <body>
  <div>
    
       <div style='border-top-left-radius:5px;background-color:#0D7E71;color:white; width: 511px; margin-left: 224px;'>
          <div style=' background-color:#2d95bb;'>  <p style=' float:left;padding:10px ;font-family: roboto;font-size:large'><b>Hi  <b></p>
              <p style='float:right;font-family: roboto;padding:10px; font-size:medium''>Posted on :   " + DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString() + @" </p><br />
              <br />
              <br /><br />

          </div>          <p style='border-radius:5px; margin-left: 60px;font-size:medium;'>Welcome ,<br>  " + message + "  " + stt + @" 

          <br/>
             <br/><br/>
       
             
      </p>
          
            
        
      </div>
      
    </div>
    </body>
</html>
";






            }

            else if (status == 4)  // Contact us
            {



                htmlBody = @"
<html lang=""en"">
    <head>    
       
        <title>
            Upcoming topics
        </title>
       
    </head>
    <body>
  <div>
    
       <div style='border-top-left-radius:5px;background-color:#0D7E71;color:white; width: 511px; margin-left: 224px;'>
          <div style=' background-color:#2d95bb;'>  <p style=' float:left;padding:10px ;font-family: roboto;font-size:large'><b>Hi Admin<b></p>
              <p style='float:right;font-family: roboto;padding:10px; font-size:medium''>Posted on :   " + DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString() + @" </p><br />
              <br />
              <br /><br />

          </div>          <p style='border-radius:5px; margin-left: 60px;font-size:medium;'><b> Name :<b>  " + name + "<br/><br/> <b> Email Address : <b>" + email + "<br/><br/><b> Message : <b>" + message + @"

          <br/>
             <br/><br/>
       
             
      </p>
          
            
        
      </div>
      
    </div>
    </body>
</html>
";

            }
            try
            {


                if (status == 4) {

                    email = "anshuldhiman625@gmail.com";
                    stt = "done";
                }

                using (MailMessage mm = new MailMessage("anshuldhiman625@gmail.com", email))
                {
                    mm.Subject = "InBox";
                    mm.Body = htmlBody;

                    mm.IsBodyHtml = true;
                   // SmtpClient smtp = new SmtpClient();
                   // smtp.Host = "smtp.gmail.com";
                    SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential("anshuldhiman625@gmail.com", "facebook@gmail");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                  //  smtp.Port = 25;
                    smtp.Send(mm);

                }

                return stt;



            }
            catch (Exception e1)
            {
            if (status == 4) {

                 
                    stt = "nodone";
                }
                 return stt;
            }



        

    }
}