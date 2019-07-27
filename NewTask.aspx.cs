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
    public partial class NewTask : System.Web.UI.Page
    {
        public List<Purchaser> Purchasers = new List<Purchaser>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DQDocEntities dQDocEntities = new DQDocEntities();
                Purchasers = dQDocEntities.Purchasers.ToList();
            }
            var action = Request["action"];

            switch (action)
            {
                default:
                    break;
            }
        }

        protected void btnsave1_Click(object sender, EventArgs e)
        {
            var taskname = txttaskname.Value;
            var taskremark = txttaskremark.Value;
            var taskcreator = txttaskcreator.Value;
            DQDocEntities dQDocEntities = new DQDocEntities();
            dQDocEntities.OATasks.Add(new OATask { Id = Guid.NewGuid(),Status="新建", PurchaseId = Guid.Parse(purchaseidhide.Value), TaskName = taskname, Remark = taskremark, CreateTime = DateTime.Now, Excutor = taskcreator });
            dQDocEntities.SaveChanges();
            Purchasers = dQDocEntities.Purchasers.ToList();

        }
    }
}