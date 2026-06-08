USE [cazhondev]
GO

/****** Object:  Table [dbo].[tblmissingcashback]    Script Date: 11-01-2022 11:06:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
drop table [tblmissingcashback];
CREATE TABLE [dbo].[tblmissingcashback](
	[missingcashback_guid] [varchar](100) NOT NULL,
	[user_guid] [varchar](100) NOT NULL,
	[shoppingtrip_id] bigint NOT NULL foreign key references TBLSHOPPINGTRIP(shoppingtrip_id),
	[cashbaack_amt] [decimal](18, 0) NOT NULL,
	[user_cmt] [varchar](1000) NULL,
	[image_name] [varchar](500) NULL,
	[url] [varchar](max) NULL,
	[transactiondatetime] [datetime] NULL,
	[approved_amt] [decimal](18, 0) NULL,
	[claim_status] [varchar](50) NOT NULL,
	[claimstatus_id] [varchar](100) NOT NULL,
	[admin_cmt] [varchar](1000) NULL,
	[createddatetime] [datetime] NULL,
	[createddatetimeutc] [datetime] NULL,
	[updateddatetime] [datetime] NULL,
	[updateddatetimeutc] [datetime] NULL,
 CONSTRAINT [PK__tblmissingcashbackguid] PRIMARY KEY CLUSTERED 
(
	[missingcashback_guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [cazhondev]
GO

INSERT INTO [dbo].[tblmissingcashback]
           ([missingcashback_guid]
           ,[user_guid]
           ,[shoppingtrip_id]
           ,[cashbaack_amt]
           ,[user_cmt]   
           ,[transactiondatetime]
           ,[approved_amt]
           ,[claim_status]
		   ,[claimstatus_id]
           ,[admin_cmt]
           ,[createddatetime]
           ,[createddatetimeutc]
          )
     VALUES
          ((select NEWID())
           ,'20EE0548-8B6D-4D07-B08A-9A4945F1391C'
           ,1
           ,200
           ,'Cashback request raised'
           ,GETDATE()
           ,150
           ,'Approved'
		   ,'32748E7C-EBA9-43F3-8EDB-48C62041719F'
           ,'Testing'
           ,getdate()
           ,getdate()
           );

INSERT INTO [dbo].[tblmissingcashback]
           ([missingcashback_guid]
           ,[user_guid]
           ,[shoppingtrip_id]
           ,[cashbaack_amt]
           ,[user_cmt]   
           ,[transactiondatetime]
           ,[approved_amt]
           ,[claim_status]
		   ,[claimstatus_id]
           ,[admin_cmt]
           ,[createddatetime]
           ,[createddatetimeutc]
          )
     VALUES
          ((select NEWID())
           ,'20EE0548-8B6D-4D07-B08A-9A4945F1391C'
           ,2
           ,250
           ,'Cashback request raised'
           ,GETDATE()
           ,250
           ,'Pending'
		   ,'73C3BB39-2D43-4E34-B64B-32236E426801'
           ,'Testing'
           ,getdate()
           ,getdate()
           );

GO




USE [cazhondev]
GO

INSERT INTO [dbo].[tbllkupgroupcode]
           ([lkupgroupcode_mdid]
           ,[lkupgroupcode_mdname]
           ,[lkupgroupcode_name]
           ,[lkupgroupcode_code]
           ,[comments]
           ,[active_flag]
           ,[createddatetime]
           ,[createddatetimeutc]
           )
     VALUES
           ((select NEWID())
           ,'@missingcashbackstatus'
           ,'MissingCashback Status'
           ,'@missingcashbackstatus'
           ,''
           ,1
           ,getdate()
           ,getdate()
          )
GO

USE [cazhondev]
GO

INSERT INTO [dbo].[tbllkuplist]
           ([lkuplist_mdid]
           ,[lkupgroupcode_mdid]
           ,[lkuplist_name]
           ,[lkuplist_code]       
           ,[active_flag]
           ,[createddatetime]
           ,[createddatetimeutc]
          )
     VALUES
           ((select NEWID())
           ,'EE839D14-A6AD-4D57-A472-D3510EDD28E2'
           ,'Approved'
           ,'@missingcashbackstatus'       
           ,1
           ,GETDATE()
           ,GetDate()
           );
		   INSERT INTO [dbo].[tbllkuplist]
           ([lkuplist_mdid]
           ,[lkupgroupcode_mdid]
           ,[lkuplist_name]
           ,[lkuplist_code]       
           ,[active_flag]
           ,[createddatetime]
           ,[createddatetimeutc]
          )
     VALUES
           ((select NEWID())
           ,'EE839D14-A6AD-4D57-A472-D3510EDD28E2'
           ,'Processing'
           ,'@missingcashbackstatus'       
           ,1
           ,GETDATE()
           ,GetDate()
           );
		   INSERT INTO [dbo].[tbllkuplist]
           ([lkuplist_mdid]
           ,[lkupgroupcode_mdid]
           ,[lkuplist_name]
           ,[lkuplist_code]       
           ,[active_flag]
           ,[createddatetime]
           ,[createddatetimeutc]
          )
     VALUES
           ((select NEWID())
           ,'EE839D14-A6AD-4D57-A472-D3510EDD28E2'
           ,'Pending'
           ,'@missingcashbackstatus'       
           ,1
           ,GETDATE()
           ,GetDate()
           );
GO





