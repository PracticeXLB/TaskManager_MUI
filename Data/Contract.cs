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
    
    public partial class Contract
    {
        public Contract()
        {
            this.ContractDetails = new HashSet<ContractDetail>();
            this.Invoices = new HashSet<Invoice>();
        }
    
        public System.Guid Id { get; set; }
        public string Name { get; set; }
        public System.Guid CompanyId { get; set; }
        public string ContractContent { get; set; }
        public string Memo { get; set; }
        public System.DateTime SignatureDate { get; set; }
        public System.DateTime ContractExecutionDate { get; set; }
        public System.Guid FileInfoId { get; set; }
        public string FileName { get; set; }
        public System.DateTime ContractEndDate { get; set; }
        public System.DateTime WarningDate { get; set; }
        public int CustomerSourceValue { get; set; }
        public System.Guid CustomerId { get; set; }
        public decimal TotalMoney { get; set; }
        public decimal PrePayMoney { get; set; }
        public bool IsOwn { get; set; }
        public System.Guid ApprovalFlowId { get; set; }
        public string ApprovalString { get; set; }
        public int ApprovalStatusValue { get; set; }
        public bool IsValid { get; set; }
        public System.DateTime CreateTime { get; set; }
        public System.DateTime UpdateTime { get; set; }
        public bool Deleted { get; set; }
        public System.Guid CreateUid { get; set; }
        public System.Guid UpdateUid { get; set; }
    
        public virtual ICollection<ContractDetail> ContractDetails { get; set; }
        public virtual ICollection<Invoice> Invoices { get; set; }
    }
}