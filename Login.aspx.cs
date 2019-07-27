using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OAMobileBackEnd
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.IsAuthenticated)
            {
                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {
                var account = txtaccount.Value;
                var pwd = txtpassword.Value;
                if (account == "admin" && pwd == "123456")
                {
                    FormsAuthentication.SetAuthCookie(account, true);
                    FormsAuthentication.RedirectFromLoginPage(account, false);
                }
                else
                {
                    throw new Exception("账号或密码错误");
                }
            }
            catch (Exception ex)
            {
                tips.InnerText = ex.Message;
            }
        }
    }
}