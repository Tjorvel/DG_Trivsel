using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string action = Request.QueryString["a"];

        if (action == "sendemail")
        {
            string name = Request.Params["name"];
            string suggest = Request.Params["suggest"];
            _Default.sendEmail(name, suggest);
            Response.Clear();
            Response.Write("OK");
            Response.End();
        }
        
    }
    private static string regexTest(string suggest)
    {
        string retString = string.Empty;
        string replace = string.Empty;
        Regex rgx = new Regex("<[^>]*>");
        retString = rgx.Replace(suggest, replace);
        return retString;
    }
    private static void sendEmail(string name, string suggest)
    {
        suggest = _Default.regexTest(suggest);
        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
        message.Body = name + Environment.NewLine + suggest;
        message.Subject = "Trivselförslag";
        message.To.Add("Dreamgroupab@gmail.com");
        message.From = new System.Net.Mail.MailAddress("dreamgroupab@gamil.com");
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        client.Credentials = new NetworkCredential("dreamgroupab@gmail.com", "DreamGroup2");
        client.EnableSsl = true;

        client.Send(message);

    }
}