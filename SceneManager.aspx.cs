using OAMobileBackEnd.Data;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OAMobileBackEnd
{
    public partial class SceneManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            var action = Request["action"];

            switch (action)
            {
                default:
                    break;
            }
        }
    }
}