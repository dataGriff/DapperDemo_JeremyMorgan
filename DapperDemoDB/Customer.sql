﻿CREATE TABLE [Customer](
  [CustomerID] [int] IDENTITY(1,1) NOT NULL,
  [CustomerFirstName] [varchar](50) NULL,
  [CustomerLastName] [varchar](50) NULL,
  [IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED
(
  [CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]