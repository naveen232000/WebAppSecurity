using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSecurity
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblMsg.Visible = false;
            Page.UnobtrusiveValidationMode=UnobtrusiveValidationMode.None;

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            LblMsg.Visible=true;
            if ((TxtName.Text == "sam") && (TxtPwd.Text == "pass@123"))
            {
                FormsAuthentication.RedirectFromLoginPage(TxtName.Text, true);

            }
            else
            {
                LblMsg.Text = "Invalid login Credential";
            }
        }
    }
}