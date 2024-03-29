﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DQDocEntities : DbContext
    {
        public DQDocEntities()
            : base("name=DQDocEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
        public DbSet<ApprovalFlowNode> ApprovalFlowNodes { get; set; }
        public DbSet<ApprovalFlowRecord> ApprovalFlowRecords { get; set; }
        public DbSet<ApprovalFlow> ApprovalFlows { get; set; }
        public DbSet<ArchivesContentFileMapping> ArchivesContentFileMappings { get; set; }
        public DbSet<ArchivesFileCatalogue> ArchivesFileCatalogues { get; set; }
        public DbSet<ArchivesFile> ArchivesFiles { get; set; }
        public DbSet<ArchivesFileWarehous> ArchivesFileWarehouses { get; set; }
        public DbSet<Attachment> Attachments { get; set; }
        public DbSet<AttachmentType> AttachmentTypes { get; set; }
        public DbSet<BookMark> BookMarks { get; set; }
        public DbSet<CalibrationRecord> CalibrationRecords { get; set; }
        public DbSet<CalibrationRecordTemp> CalibrationRecordTemps { get; set; }
        public DbSet<Calibration> Calibrations { get; set; }
        public DbSet<ChartMapping> ChartMappings { get; set; }
        public DbSet<ColdStorage> ColdStorages { get; set; }
        public DbSet<ColdStoreVerification> ColdStoreVerifications { get; set; }
        public DbSet<ColdStoreVerifySolution> ColdStoreVerifySolutions { get; set; }
        public DbSet<CommonDevice> CommonDevices { get; set; }
        public DbSet<Company> Companies { get; set; }
        public DbSet<ContractDetail> ContractDetails { get; set; }
        public DbSet<Contract> Contracts { get; set; }
        public DbSet<CUser> CUsers { get; set; }
        public DbSet<CustomBookMark> CustomBookMarks { get; set; }
        public DbSet<CustomField> CustomFields { get; set; }
        public DbSet<CustomTemplate> CustomTemplates { get; set; }
        public DbSet<DataYear> DataYears { get; set; }
        public DbSet<Department> Departments { get; set; }
        public DbSet<Document> Documents { get; set; }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<Fan> Fans { get; set; }
        public DbSet<FieldMapping> FieldMappings { get; set; }
        public DbSet<FieldValueMapping> FieldValueMappings { get; set; }
        public DbSet<FileInfo> FileInfoes { get; set; }
        public DbSet<GoodsInfo> GoodsInfos { get; set; }
        public DbSet<GoodsSale> GoodsSales { get; set; }
        public DbSet<GoodsType> GoodsTypes { get; set; }
        public DbSet<Incubator> Incubators { get; set; }
        public DbSet<IncubatorVerification> IncubatorVerifications { get; set; }
        public DbSet<IncubatorVerifySolution> IncubatorVerifySolutions { get; set; }
        public DbSet<Inventory> Inventories { get; set; }
        public DbSet<Invoice> Invoices { get; set; }
        public DbSet<LogInfo> LogInfoes { get; set; }
        public DbSet<Menu> Menus { get; set; }
        public DbSet<OATask> OATasks { get; set; }
        public DbSet<Position> Positions { get; set; }
        public DbSet<Purchaser> Purchasers { get; set; }
        public DbSet<Refrigerator> Refrigerators { get; set; }
        public DbSet<RefrigeratorVerification> RefrigeratorVerifications { get; set; }
        public DbSet<RefrigeratorVerifySolution> RefrigeratorVerifySolutions { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<RoleWithMenu> RoleWithMenus { get; set; }
        public DbSet<RoleWithUser> RoleWithUsers { get; set; }
        public DbSet<SaleOrderDetail> SaleOrderDetails { get; set; }
        public DbSet<SaleOrder> SaleOrders { get; set; }
        public DbSet<ShortMessage> ShortMessages { get; set; }
        public DbSet<StatusField> StatusFields { get; set; }
        public DbSet<Supplyer> Supplyers { get; set; }
        public DbSet<SupplyOrderDetail> SupplyOrderDetails { get; set; }
        public DbSet<SupplyOrder> SupplyOrders { get; set; }
        public DbSet<Sys_Items> Sys_Items { get; set; }
        public DbSet<Sys_ItemsDetail> Sys_ItemsDetail { get; set; }
        public DbSet<UserPower> UserPowers { get; set; }
        public DbSet<Verification> Verifications { get; set; }
        public DbSet<VerificationType> VerificationTypes { get; set; }
        public DbSet<VeryficationCharacter> VeryficationCharacters { get; set; }
        public DbSet<OATaskImg> OATaskImgs { get; set; }
    }
}
