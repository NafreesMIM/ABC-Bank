USE [ABC bank]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 12/27/2023 3:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[bank_code] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[contact_info] [varchar](255) NULL,
	[bank_type] [varchar](50) NULL,
	[history] [text] NULL,
	[customer_base] [int] NULL,
	[achievements] [text] NULL,
	[ownership_details] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[bank_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAccount]    Script Date: 12/27/2023 3:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccount](
	[account_number] [int] NOT NULL,
	[holder_name] [varchar](255) NOT NULL,
	[type] [varchar](50) NULL,
	[balance] [decimal](18, 2) NULL,
	[transaction_history] [text] NULL,
	[interest_rate] [decimal](5, 2) NULL,
	[account_status] [varchar](50) NULL,
	[opening_date] [date] NULL,
	[closure_date] [date] NULL,
	[ownership_details] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[account_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAccountConductTransaction]    Script Date: 12/27/2023 3:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccountConductTransaction](
	[transaction_id] [int] NOT NULL,
	[amount] [decimal](18, 2) NULL,
	[depositor_account] [int] NULL,
	[withdrawal_account] [int] NULL,
	[currency] [varchar](10) NULL,
	[transaction_status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAccountOwnedByCustomer]    Script Date: 12/27/2023 3:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccountOwnedByCustomer](
	[nic] [varchar](15) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[contact_number] [varchar](20) NULL,
	[financial_info] [text] NULL,
	[email] [varchar](255) NULL,
	[dob] [date] NULL,
	[age] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[nic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch]    Script Date: 12/27/2023 3:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[branch_id] [int] NOT NULL,
	[address] [varchar](255) NOT NULL,
	[manager] [varchar](255) NULL,
	[city] [varchar](100) NULL,
	[name] [varchar](255) NULL,
	[contact] [varchar](20) NULL,
	[bank_code] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Branch]  WITH CHECK ADD FOREIGN KEY([bank_code])
REFERENCES [dbo].[Bank] ([bank_code])
GO
