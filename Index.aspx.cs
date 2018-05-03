using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;
using ServiceReference1;
using System.IO;
using GoogleReCaptcha;
using System;

public partial class Index : System.Web.UI.Page
{
    ServiceReference1.Service1Client sr1 = new ServiceReference1.Service1Client();
    GoogleReCaptcha.GoogleReCaptcha ctrlGoogleReCaptcha = new GoogleReCaptcha.GoogleReCaptcha();
  //  GoogleReCaptcha.GoogleReCaptcha ctrlGoogleReCaptcha1 = new GoogleReCaptcha.GoogleReCaptcha();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void reset()
    {
        txtname.Text = string.Empty;
        txtemailid.Text = string.Empty;
        txtphone.Text = string.Empty;
        txtmessage.Text = string.Empty;
        //for mobile
        txtname1.Text = string.Empty;
        txtemailid1.Text = string.Empty;
        txtphone1.Text = string.Empty;
        txtmessage1.Text = string.Empty;
    }
    public void Insert()
    {

        try
        {
            var host = HttpContext.Current.Request.Url.Host; // will get www.mywebsite.com
            var port = HttpContext.Current.Request.Url.Port; // will get the port
            string URL = HttpContext.Current.Request.Url.ToString();
            string NAME = txtname.Text.Trim();
            string EMAIL = txtemailid.Text.Trim();
            string PHONE = txtphone.Text.Trim();
            string ADDRESS = string.Empty;
            string CITY = string.Empty;
            string STATENAME = string.Empty;
            string PINCODE = string.Empty;
            string COUNTRY = string.Empty;
            string COMPANYNAME = string.Empty;
            string CONTACTPERSON = string.Empty;
            string COMPANYADDRESS = string.Empty;
            string COMPANYPHONENUMBER = string.Empty;
            string COMPANYEMAIL = string.Empty;
            string PROJECTBUDGET = string.Empty;
            string PROJECTTIMEFRAME = string.Empty;
            string PRODUCT = string.Empty;
            string PAGENAME = host.ToString() + "/" + FirstCharToUpper(Path.GetFileNameWithoutExtension(Request.Path));
            string BUSSINESSTYPE = string.Empty;
            string CHANEL = string.Empty;
            string MESSAGE = txtmessage.Text.Trim();
            string SUBJECT = string.Empty;
            string filepath = string.Empty;
            string IPADDRESS = string.Empty;
            IPADDRESS = this.GetIPAddress();
            string str = sr1.sumbmitEnquiryapplication(URL, PAGENAME, NAME, EMAIL, PHONE, ADDRESS, CITY, STATENAME, PINCODE, COUNTRY, COMPANYNAME, COMPANYEMAIL, CONTACTPERSON, COMPANYADDRESS, COMPANYPHONENUMBER, PROJECTBUDGET, PROJECTTIMEFRAME, PRODUCT, BUSSINESSTYPE, CHANEL, SUBJECT, MESSAGE, IPADDRESS, filepath);
            if (str != "")
            {
                string message = str;
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
            }
            else
            {
                string message = "Enquiry is not submitted,please try again.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    public void Insert1()
    {

        try
        {
            var host = HttpContext.Current.Request.Url.Host; // will get www.mywebsite.com
            var port = HttpContext.Current.Request.Url.Port; // will get the port
            string URL = HttpContext.Current.Request.Url.ToString();
            string NAME = txtname1.Text.Trim();
            string EMAIL = txtemailid1.Text.Trim();
            string PHONE = txtphone1.Text.Trim();
            string ADDRESS = string.Empty;
            string CITY = string.Empty;
            string STATENAME = string.Empty;
            string PINCODE = string.Empty;
            string COUNTRY = string.Empty;
            string COMPANYNAME = string.Empty;
            string CONTACTPERSON = string.Empty;
            string COMPANYADDRESS = string.Empty;
            string COMPANYPHONENUMBER = string.Empty;
            string COMPANYEMAIL = string.Empty;
            string PROJECTBUDGET = string.Empty;
            string PROJECTTIMEFRAME = string.Empty;
            string PRODUCT = string.Empty;
            string PAGENAME = host.ToString() + "/" + FirstCharToUpper(Path.GetFileNameWithoutExtension(Request.Path));
            string BUSSINESSTYPE = string.Empty;
            string CHANEL = string.Empty;
            string MESSAGE = txtmessage1.Text.Trim();
            string SUBJECT = string.Empty;
            string filepath = string.Empty;
            string IPADDRESS = string.Empty;
            IPADDRESS = this.GetIPAddress();
            string str = sr1.sumbmitEnquiryapplication(URL, PAGENAME, NAME, EMAIL, PHONE, ADDRESS, CITY, STATENAME, PINCODE, COUNTRY, COMPANYNAME, COMPANYEMAIL, CONTACTPERSON, COMPANYADDRESS, COMPANYPHONENUMBER, PROJECTBUDGET, PROJECTTIMEFRAME, PRODUCT, BUSSINESSTYPE, CHANEL, SUBJECT, MESSAGE, IPADDRESS, filepath);
            if (str != "")
            {
                string message = str;
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
            }
            else
            {
                string message = "Enquiry is not submitted,please try again.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
            }
        }
        catch (Exception ex)
        {
            ex.ToString();
        }
    }
    public static string FirstCharToUpper(string s)
    {
        // Check for empty string.
        if (string.IsNullOrEmpty(s))
        {
            return string.Empty;
        }
        // Return char and concat substring.
        return char.ToUpper(s[0]) + s.Substring(1);
    }
    public void sendMail(string ToAddress, string subject, string Mailbody, string displayname, string AttachmentPath, string ReplyTo, string BccToAddress = null)
    {
        try
        {
            MailMessage mailMessage = new MailMessage();

            mailMessage.To.Add(ToAddress);
            mailMessage.ReplyToList.Add(ReplyTo);                       //= new MailAddress(ReplyTo);

            if (BccToAddress != null)
            {

                mailMessage.Bcc.Add(BccToAddress);

            }
            mailMessage.From = new MailAddress("donotreply@jupsoft.org", displayname);

            mailMessage.Subject = subject;

            if (AttachmentPath.Trim() != "")
            {

                Attachment item = new Attachment(AttachmentPath);

                mailMessage.Attachments.Add(item);

            }

            mailMessage.IsBodyHtml = true;

            mailMessage.Body = Mailbody;

            SmtpClient smtpClient = new SmtpClient("mail.jupsoft.org");

            NetworkCredential credentials = new NetworkCredential("donotreply@jupsoft.org", "jtpl@1234");

            smtpClient.UseDefaultCredentials = false;

            smtpClient.EnableSsl = "mail.jupsoft.org".ToLower().Contains("smtp.") ? true : false;

            smtpClient.Credentials = credentials;

            smtpClient.Port = "mail.jupsoft.org".ToLower().Contains("smtp.") ? 587 : 25;

            smtpClient.Send(mailMessage);
        }
        catch (Exception ex)
        {
            ex.ToString();
        }

    }
    protected override void CreateChildControls()
    {
        //Create GoogleReCaptcha
        base.CreateChildControls();

        //ctrlGoogleReCaptcha.PublicKey = "6LfVDgMTAAAAAJnH9GV0i7r_Pl3FfC_hyfh2Cgnq";        // Local key
        //ctrlGoogleReCaptcha.PrivateKey = "6LfVDgMTAAAAAPfTlH1n7z72CvS46c2C_qkTmFsZ";       // Local key

        ctrlGoogleReCaptcha.PublicKey = "6LcEyzAUAAAAAEg_bEfVmZzWn8bwoPsME5Iua2qK";     // Online key
        ctrlGoogleReCaptcha.PrivateKey = "6LcEyzAUAAAAAM7QE1shDdmkN-BqRq9QiQnWG_LC";   // Online key

        //ctrlGoogleReCaptcha1.PublicKey = "6LfVDgMTAAAAAJnH9GV0i7r_Pl3FfC_hyfh2Cgnq";        // Local key
        //ctrlGoogleReCaptcha1.PrivateKey = "6LfVDgMTAAAAAPfTlH1n7z72CvS46c2C_qkTmFsZ";       // Local key

    //    ctrlGoogleReCaptcha1.PublicKey = "6LdFETsUAAAAALRBWgeoAn1yvRrVeTWUrr7CbFWn";     // Online key
     //   ctrlGoogleReCaptcha1.PrivateKey = "6LdFETsUAAAAAKuyCmkGgkgTVvkR5d6rrPuHJLrr";   // Online key
       
        Panel1.Controls.Add(ctrlGoogleReCaptcha);
     //   Panel11.Controls.Add(ctrlGoogleReCaptcha1);
    }
    public void RunJavaScriptFunction(string functionName)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), Convert.ToString(Guid.NewGuid()), "javascript:" + functionName + ";", true);
    }
    //Autogenerated mail to Client
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (ctrlGoogleReCaptcha.Validate())
        {
            Label1.Text = "";
            // Validate Recaptacha
            //submit form success
            //lblStatus.Text = "";
            try
            {
                //CRM Lead Entry
                Insert();
                if (txtname.Text == string.Empty)
                    return;
                StringBuilder stringBuilder1 = new StringBuilder();

                stringBuilder1.Append(string.Concat(new string[]
                    {
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: 1.5;color: #222;padding: 0'>Dear ",
                    this.txtname.Text.Trim(),",</p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: 1.5;color: #222;padding: 0'>Greetings from Jupsoft!</p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: 1.5;color: #222;padding: 0'>Jupsoft eConnect-K12 is a revolutionary Online school management ERP system that aims to simplify, accelerate organize and coordinate the daily processes that are a part of any school’s functioning. It is advanced Online ERP software that is exceptionally efficient, secure, systematic and also easy to use.",
                    "<br/><br/>It will connect, collect, integrate and interpret information from different departments and manage functions and processes across your school at a central point, to enable effective decision making – making way for progress.",
                    "<br/><br/>It reduces paperwork tremendously and is capable of handling administration, infrastructure and logistics of any school. It allows you to share, search and store information easily and safely, which saves time and money while increasing efficiency and accuracy.",
                    "<br/><br/>What’s more, you need not make changes to your existing infrastructure to install this school automation system! You may select the features and modules that best suit your requirement and can add on as and when required. *It is totally flexible and adaptable!",
                    "<br/><br/>With over 12 years of experience and a clientele of over 250+ prestigious schools, our expertise in the field can help you in increasing productivity, reducing business costs, and accelerating and streamlining your processes.",
                    "<br/><br/>Online Brochure: https://goo.gl/296sJn",
                    "<br/><br/><b>To know more please visit our website: <a href='https://www.schoolmanagementsoftware.in'>www.schoolmanagementsoftware.in</a></b>",
                    "<br/><br/>If you have any query, please feel free to call undersigned any time. We will feel pleasure to help you.",
                    "<br/><br/>Please provide following information for submitting our financial proposal</p>",
                    //Bootstrap Table
                    "<br/><table style='border: 1px solid #ddd;width: 100%;max-width: 100%;margin-bottom: 20px;border-spacing: 0;border-collapse: collapse;'><tbody style='display: table-row-group;vertical-align: middle;border-color: inherit;'>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>1.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Name of School</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>2.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>No. of Students</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>3.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>How many schools/branches you have?</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>4.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Are you a group of School?</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>5.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Affiliated board</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>6.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Affiliation No.</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>7.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Principal Name</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>8.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>School's Official email ID</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>9.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>School's Website</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>10.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Are you using any software? If yes, please specify.</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>11.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>If already using any software - Reason for Change</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "</tbody></table>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: 1.5;color: #222;padding: 0'>I request your good self to give us an appointment for detailed online demonstration and discussion.</p>",
                    "<br/><p style='font-family: Helvetica, Arial, sans-serif;line-height: 1.5;color: #222;padding: 0'>Thanking you,</p><br/>",
                    "<h3>Jupsoft Technologies Pvt. Ltd.</h3>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: .5;color: #222;padding: 0'>Phone: 0120-4128250</p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: .5;color: #222;padding: 0'>Mobile: 9599520064</p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: .5;color: #222;padding: 0'>Address: B-75, FF, Sector 6, Noida 201301 UP</p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: .5;color: #222;padding: 0'>Website: <a href='https://www.jupsoft.com'>www.jupsoft.com</a></p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: .5;color: #222;padding: 0'>Email: <a href='mailto:sales@jupsoft.com' target='_blank'>sales@jupsoft.com</a></p>"
                    }));

                this.sendMail(this.txtemailid.Text.Trim(), "Cloud based School Management Software", stringBuilder1.ToString(), "Jupsoft eConnect K12", "", "sales@jupsoft.com", null);
             
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.Append(string.Concat(new string[]
                    {
                    "<h3 style='text-align: center'>Enquiry from econnect.jupsoft.com</h3><table style='border: 1px solid #ddd;width: 100%;max-width: 100%;margin-bottom: 20px;border-spacing: 0;border-collapse: collapse;'><tbody style='display: table-row-group;vertical-align: middle;border-color: inherit;'><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Name </b>:</td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtname.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Email ID</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtemailid.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Mobile Number</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtphone.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Subject</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtmessage.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>IP Address</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.GetIPAddress()
                    }));
                stringBuilder.Append("</td></tr></tbody></table><br/><br/></br>");
                this.sendMail("sales@jupsoft.com", "Online Contact Form : econnect.jupsoft.com", stringBuilder.ToString(), "Online Contact Form : econnect.jupsoft.com", "", txtemailid.Text.Trim(), null);
                RunJavaScriptFunction("SMSWebServices1()");
            }
            catch (Exception ex)
            {
                ex.ToString();
                //   this.sendMail("akhil@jupsoft.org ", "Mail from eConnect enquiry", ex.Message.ToString() + ";" + this.txtname.Text.Trim() + "," + this.txtemailid.Text.Trim() + "," + this.txtphone.Text.Trim() + "," + this.txtmessage.Text.Trim(), "Enquiry From Cloud based School Management ERP", "", null);
            }
          //  this.reset();
        }
        else
        {
            //captcha challenge failed
            Label1.Text = "Captcha Failed!! Please try again!!";
            this.reset();
        }
       
    }
    // for mobile
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
      //  if (ctrlGoogleReCaptcha1.Validate())
     //   {
         //   Label11.Text = "";
            // Validate Recaptacha
            //submit form success
            //lblStatus.Text = "";
            try
            {
                // CRM Lead Entry
                Insert1();
                if (txtname1.Text == string.Empty)
                    return;
                StringBuilder stringBuilder11 = new StringBuilder();
                stringBuilder11.Append(string.Concat(new string[]
                    {
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: 1.5;color: #222;padding: 0'>Dear ",
                    this.txtname1.Text.Trim(),",</p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: 1.5;color: #222;padding: 0'>Greetings from Jupsoft!</p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: 1.5;color: #222;padding: 0'>Jupsoft eConnect-K12 is a revolutionary Online school management ERP system that aims to simplify, accelerate organize and coordinate the daily processes that are a part of any school’s functioning. It is advanced Online ERP software that is exceptionally efficient, secure, systematic and also easy to use.",
                    "<br/><br/>It will connect, collect, integrate and interpret information from different departments and manage functions and processes across your school at a central point, to enable effective decision making – making way for progress.",
                    "<br/><br/>It reduces paperwork tremendously and is capable of handling administration, infrastructure and logistics of any school. It allows you to share, search and store information easily and safely, which saves time and money while increasing efficiency and accuracy.",
                    "<br/><br/>What’s more, you need not make changes to your existing infrastructure to install this school automation system! You may select the features and modules that best suit your requirement and can add on as and when required. *It is totally flexible and adaptable!",
                    "<br/><br/>With over 12 years of experience and a clientele of over 250+ prestigious schools, our expertise in the field can help you in increasing productivity, reducing business costs, and accelerating and streamlining your processes.",
                    "<br/><br/>Online Brochure: https://goo.gl/296sJn",
                    "<br/><br/><b>To know more please visit our website: <a href='https://www.schoolmanagementsoftware.in'>www.schoolmanagementsoftware.in</a></b>",
                    "<br/><br/>If you have any query, please feel free to call undersigned any time. We will feel pleasure to help you.",
                    "<br/><br/>Please provide following information for submitting our financial proposal</p>",
                    //Bootstrap Table
                    "<br/><table style='border: 1px solid #ddd;width: 100%;max-width: 100%;margin-bottom: 20px;border-spacing: 0;border-collapse: collapse;'><tbody style='display: table-row-group;vertical-align: middle;border-color: inherit;'>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>1.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Name of School</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>2.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>No. of Students</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>3.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>How many schools/branches you have?</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>4.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Are you a group of School?</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>5.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Affiliated board</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>6.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Affiliation No.</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>7.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Principal Name</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>8.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>School's Official email ID</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>9.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>School's Website</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>10.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Are you using any software? If yes, please specify.</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>11.</td><td style='font-size:14px;border: 1px solid #ddd;width:55%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>If already using any software - Reason for Change</td><td style='font-size:14px;border: 1px solid #ddd;width:40%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'></td></tr>",
                    "</tbody></table>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: 1.5;color: #222;padding: 0'>I request your good self to give us an appointment for detailed online demonstration and discussion.</p>",
                    "<br/><p style='font-family: Helvetica, Arial, sans-serif;line-height: 1.5;color: #222;padding: 0'>Thanking you,</p><br/>",
                    "<h3>Jupsoft Technologies Pvt. Ltd.</h3>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: .5;color: #222;padding: 0'>Phone: 0120-4128250</p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: .5;color: #222;padding: 0'>Mobile: 9599520064</p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: .5;color: #222;padding: 0'>Address: B-75, FF, Sector 6, Noida 201301 UP</p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: .5;color: #222;padding: 0'>Website: <a href='https://www.jupsoft.com'>www.jupsoft.com</a></p>",
                    "<p style='font-family: Helvetica, Arial, sans-serif;line-height: .5;color: #222;padding: 0'>Email: <a href='mailto:sales@jupsoft.com' target='_blank'>sales@jupsoft.com</a></p>"
                    }));
                this.sendMail(this.txtemailid1.Text.Trim(), "Cloud based School Management Software", stringBuilder11.ToString(), "Jupsoft eConnect K12", "", "sales@jupsoft.com", null);
                StringBuilder stringBuilder1 = new StringBuilder();
                stringBuilder1.Append(string.Concat(new string[]
                    {
                    "<h3 style='text-align: center'>Enquiry from econnect.jupsoft.com</h3><table style='border: 1px solid #ddd;width: 100%;max-width: 100%;margin-bottom: 20px;border-spacing: 0;border-collapse: collapse;'><tbody style='display: table-row-group;vertical-align: middle;border-color: inherit;'><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Name </b>:</td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtname1.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Email ID</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtemailid1.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Mobile Number</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtphone1.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Subject</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtmessage1.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>IP Address</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.GetIPAddress()
                    }));
                stringBuilder1.Append("</td></tr></tbody></table><br/><br/></br>");
                this.sendMail("sales@jupsoft.com", "Online Mobile Contact Form : econnect.jupsoft.com", stringBuilder1.ToString(), "Online Mobile Contact Form : econnect.jupsoft.com", "", txtemailid1.Text.Trim(), null);
              
                RunJavaScriptFunction("SMSWebServices12()");
             //   Response.Redirect("thank-you.aspx");
            }
            catch (Exception ex)
            {
                ex.ToString();
                //   this.sendMail("akhil@jupsoft.org ", "Mail from eConnect enquiry", ex.Message.ToString() + ";" + this.txtname.Text.Trim() + "," + this.txtemailid.Text.Trim() + "," + this.txtphone.Text.Trim() + "," + this.txtmessage.Text.Trim(), "Enquiry From Cloud based School Management ERP", "", null);
            }
            //  this.reset();
        //}
        //else
        //{
        //    //captcha challenge failed
        //    Label11.Text = "Captcha Failed!! Please try again!!";
        //    this.reset();
        //}
    }
    public string GetIPAddress()
    {
        string ipaddress;
        ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (ipaddress == "" || ipaddress == null)
        {
            ipaddress = Request.ServerVariables["REMOTE_ADDR"];
        }
        return ipaddress;
    }
}