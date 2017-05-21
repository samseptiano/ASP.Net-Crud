CREATE TABLE [dbo].[Record]
(
	[email] NVARCHAR(200) NOT NULL PRIMARY KEY, 
    [keluhan] NTEXT NULL, 
    [usia] INT NULL, 
    [waktu] DATETIME NULL, 
    CONSTRAINT [PK_Table] PRIMARY KEY ([email])
)
