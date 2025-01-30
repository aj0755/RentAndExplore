﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class forget : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnResetPassword_Click(object sender, EventArgs e)
    {
        string userEmail = txtEmail.Text.Trim();

        if (string.IsNullOrEmpty(userEmail))
        {
            lblMessage.Text = "Please enter a valid email address.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            return;
        }

        try
        {
            string resetLink = "http://localhost:50280/RentAndExplore/create.aspx";

            string smtpAddress = "smtp.gmail.com"; // e.g., smtp.gmail.com
            int portNumber = 587; // Typically 587 for TLS or 465 for SSL
            bool enableSSL = true;

            string emailFrom = "rentandexpo@gmail.com";
            string password = "hqbn ptty mysj srfm";
            string emailTo = userEmail;
            string subject = "Reset Your Password";
            string body = "Reset password link " + resetLink;

            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress(emailFrom);
                mail.To.Add(emailTo);
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;

                using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
                {
                    smtp.Credentials = new NetworkCredential(emailFrom, password);
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                }
            }

            lblMessage.Text = "A password reset link has been sent to your email address.";
            lblMessage.ForeColor = System.Drawing.Color.Green;
        }
        catch (Exception ex)
        {
            // Log exception (optional)
            lblMessage.Text = "An error occurred while sending the email. Please try again later." + ex.ToString();
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
    }
}