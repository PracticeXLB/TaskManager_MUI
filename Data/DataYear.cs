//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace OAMobileBackEnd.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class DataYear
    {
        public System.Guid Id { get; set; }
        public string DataYearName { get; set; }
        public string Memo { get; set; }
        public System.Guid CurrentUserId { get; set; }
        public System.DateTime CreateTime { get; set; }
        public System.DateTime UpdateTime { get; set; }
        public bool Deleted { get; set; }
        public System.Guid CreateUid { get; set; }
        public System.Guid UpdateUid { get; set; }
    }
}
