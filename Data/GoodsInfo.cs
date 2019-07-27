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
    
    public partial class GoodsInfo
    {
        public GoodsInfo()
        {
            this.Inventories = new HashSet<Inventory>();
            this.SaleOrderDetails = new HashSet<SaleOrderDetail>();
            this.SupplyOrderDetails = new HashSet<SupplyOrderDetail>();
        }
    
        public System.Guid Id { get; set; }
        public string Name { get; set; }
        public string Specific { get; set; }
        public string ModelType { get; set; }
        public string Unit { get; set; }
        public string Memo { get; set; }
        public System.Guid GoodsTypeId { get; set; }
        public decimal UnitPrice { get; set; }
        public string Factory { get; set; }
        public string Tel { get; set; }
        public string Address { get; set; }
        public string Contactor { get; set; }
        public System.DateTime CreateTime { get; set; }
        public System.DateTime UpdateTime { get; set; }
        public bool Deleted { get; set; }
        public System.Guid CreateUid { get; set; }
        public System.Guid UpdateUid { get; set; }
    
        public virtual ICollection<Inventory> Inventories { get; set; }
        public virtual ICollection<SaleOrderDetail> SaleOrderDetails { get; set; }
        public virtual ICollection<SupplyOrderDetail> SupplyOrderDetails { get; set; }
    }
}
