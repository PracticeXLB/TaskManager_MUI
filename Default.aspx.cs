using OAMobileBackEnd.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OAMobileBackEnd
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            //DigitalChaohuDbEntities digitalChaohuDbEntities = new DigitalChaohuDbEntities();
            //digitalChaohuDbEntities.SiteInfoes.Tolist();
            Response.Redirect("tab-webview-main.aspx");
        }
    }
}