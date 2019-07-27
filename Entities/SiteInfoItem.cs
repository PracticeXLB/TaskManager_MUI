using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OAMobileBackEnd.Entities
{
    public class SiteInfoItem
    {
        public int Id { get; set; }
        public string SiteName { get; set; }
        public string SiteCode { get; set; }
        public Nullable<decimal> AlertWaterLevel { get; set; }
        public Nullable<decimal> EnsureWaterLevel { get; set; }
        public string AppType { get; set; }
        public string BelongToRiver { get; set; }
        public string WaterLevel { get; set; }
        public DateTime? Record_time { get; set; }
        public string FlowRate { get; set; }


    }
}