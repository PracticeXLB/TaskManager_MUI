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
    
    public partial class SaleOrderDetail
    {
        public System.Guid Id { get; set; }
        public System.Guid GoodsInfos { get; set; }
        public decimal UnitPrice { get; set; }
        public decimal SupplyPrice { get; set; }
        public decimal GoodsCount { get; set; }
        public decimal Price { get; set; }
        public System.Guid SaleOrdersId { get; set; }
        public System.DateTime CreateTime { get; set; }
        public System.DateTime UpdateTime { get; set; }
        public bool Deleted { get; set; }
        public System.Guid CreateUid { get; set; }
        public System.Guid UpdateUid { get; set; }
        public Nullable<System.Guid> GoodsInfo_Id { get; set; }
    
        public virtual GoodsInfo GoodsInfo { get; set; }
        public virtual SaleOrder SaleOrder { get; set; }
    }
}
