﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace LingerieCO5027
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnSendE_Click(object sender, EventArgs e)
        {
            //Sends email using a mail server that requires login credentials and a secure connections, e.g. gmail

            //create mail client and message with to and from address, and set message subject and body

            //create mail client and message with to and from address, and set message subject and body
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("onlyschoolpurposes@gmail.com", "onlyschoolpurposes@gmail.com");
            msg.Subject = TextBoxSubject.Text;
            msg.Body = TextBoxName.Text;

            //settings specific to the mail service, e.g. server location, port number and that ssl is required
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            //create credentials - e.g. username and password for the account
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("onlyschoolpurposes@gmail.com", "lcb12345");
            smtpClient.Credentials = credentials;
            msg = new MailMessage("onlyschoolpurposes@gmail.com", "onlyschoolpurposes@gmail.com");

            try
            {
                smtpClient.Send(msg);
                LiteralMessage.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                LiteralMessage.Text = "<p>Send failed:" + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}