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
    public partial class TaskManager : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnsearch_Click(null, null);
            }
            var action = Request["action"];

            switch (action)
            {
                default:
                    break;
            }
        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            DQDocEntities dQDocEntities = new DQDocEntities();
            DateTime begindate, enddate;

            if (!DateTime.TryParse(btnbegindate.InnerText, out begindate))
            {
                begindate = DateTime.Now.AddDays(-30);
            }
            else
            {

                begindate = begindate.AddDays(-1);
            }
            if (!DateTime.TryParse(btnenddate.InnerText, out enddate))
            {
                enddate = DateTime.Now.AddDays(1);
            }
            else
            {
                enddate = enddate.AddDays(1);
            }

            Tasks.DataSource = dQDocEntities.OATasks.Where(o => o.CreateTime > begindate && o.CreateTime <= enddate).ToList();
            Tasks.DataBind();
        }

    }
}