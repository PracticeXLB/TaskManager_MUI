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
    
    public partial class Supplyer
    {
        public Supplyer()
        {
            this.SupplyOrders = new HashSet<SupplyOrder>();
        }
    
        public System.Guid Id { get; set; }
        public string Name { get; set; }
        public string Charger { get; set; }
        public string Address { get; set; }
        public string Contactor { get; set; }
        public string Tel1 { get; set; }
        public string Tel2 { get; set; }
        public string Email { get; set; }
        public string Memo { get; set; }
        public string Fax { get; set; }
        public string ZipCode { get; set; }
        public System.DateTime CreateTime { get; set; }
        public System.DateTime UpdateTime { get; set; }
        public bool Deleted { get; set; }
        public System.Guid CreateUid { get; set; }
        public System.Guid UpdateUid { get; set; }
    
        public virtual ICollection<SupplyOrder> SupplyOrders { get; set; }
    }
}