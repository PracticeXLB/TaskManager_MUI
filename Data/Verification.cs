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
    
    public partial class Verification
    {
        public Verification()
        {
            this.ContractDetails = new HashSet<ContractDetail>();
        }
    
        public System.Guid Id { get; set; }
        public System.Guid ContractDetailId { get; set; }
        public System.Guid SchemeFileId { get; set; }
        public System.Guid SchemeUserId { get; set; }
        public string SchemeMemo { get; set; }
        public Nullable<System.DateTime> SchemeDatetime { get; set; }
        public Nullable<System.DateTime> ExecuteTime { get; set; }
        public System.Guid ExecuteDataFileId { get; set; }
        public string ExecuteMemo { get; set; }
        public System.Guid ReporterId { get; set; }
        public System.Guid VerificationFileInfoId { get; set; }
        public string ReportMemo { get; set; }
        public Nullable<System.DateTime> ReportDatetime { get; set; }
        public System.Guid VerificationTypeId { get; set; }
        public int Number { get; set; }
        public int VerifiactionTimes { get; set; }
        public decimal UnitPrice { get; set; }
        public int VerifiactionStatusValue { get; set; }
        public System.DateTime CreateTime { get; set; }
        public System.DateTime UpdateTime { get; set; }
        public bool Deleted { get; set; }
        public System.Guid CreateUid { get; set; }
        public System.Guid UpdateUid { get; set; }
        public System.Guid OriginalVerifyDataFileId { get; set; }
    
        public virtual ICollection<ContractDetail> ContractDetails { get; set; }
    }
}