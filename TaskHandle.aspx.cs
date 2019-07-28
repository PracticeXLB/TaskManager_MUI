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
    public partial class TaskHandle : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var taskid = Guid.Parse(Request["taskid"]);

                RefreshTaskInfo(taskid);
            }

        }

        private void RefreshTaskInfo(Guid taskid)
        {
            DQDocEntities dQDocEntities = new DQDocEntities();
            var task = dQDocEntities.OATasks.FirstOrDefault(o => o.Id == taskid);
            hidTaskid.Value = task.Id.ToString();
            titleh1.InnerText = task.TaskName;
            txttaskname.Value = task.TaskName;
            txttaskremark.Value = task.Remark;
            txttaskcreator.Value = task.Excutor;
            if (task.StartTime.HasValue)
            {
                btnstartdate.InnerText = string.Format("{0:yyyy-MM-dd}", task.StartTime.Value);
                hidstartdate.Value = btnstartdate.InnerText;
            }
            if (task.EndTime.HasValue)
            {
                btnenddate.InnerText = string.Format("{0:yyyy-MM-dd}", task.EndTime.Value);

                hidenddate.Value = btnenddate.InnerText;
            }
        }
        protected void btnsave1_Click(object sender, EventArgs e)
        {
            DQDocEntities dQDocEntities = new DQDocEntities();
            Guid taskid = Guid.Parse(hidTaskid.Value);
            var task = dQDocEntities.OATasks.FirstOrDefault(o => o.Id == taskid);

            DateTime dt = DateTime.Now;
            if (DateTime.TryParse(hidstartdate.Value, out dt))
            {
                task.StartTime = dt;
                if (dt < DateTime.Now)
                {
                    task.Status = "已开始";
                }
            }

            if (DateTime.TryParse(hidenddate.Value, out dt))
            {
                task.EndTime = dt;
                if (dt < DateTime.Now)
                {
                    task.Status = "已结束";
                }
            }
            if (!string.IsNullOrEmpty(txttaskname.Value))
            {
                task.TaskName = txttaskname.Value;
            }
            if (!string.IsNullOrEmpty(txttaskremark.Value))
            {
                task.Remark = txttaskremark.Value;
            }
            if (!string.IsNullOrEmpty(txttaskcreator.Value))
            {
                task.Excutor = txttaskcreator.Value;
            }
            dQDocEntities.SaveChanges();

            RefreshTaskInfo(taskid);
        }
    }
}