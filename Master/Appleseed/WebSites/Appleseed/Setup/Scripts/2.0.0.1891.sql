/*
   jueves, 03 de febrero de 201111:45:03 a.m.
   User: sa
   Server: .\SQLExpress
   Database: Appleseed
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.aspnet_Membership SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.aspnet_ResetPasswordTokens
	(
	TokenId uniqueidentifier NOT NULL,
	UserId uniqueidentifier NOT NULL,
	CreationDate datetime NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.aspnet_ResetPasswordTokens ADD CONSTRAINT
	PK_aspnet_ResetPasswordTokens PRIMARY KEY CLUSTERED 
	(
	TokenId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.aspnet_ResetPasswordTokens ADD CONSTRAINT
	FK_aspnet_ResetPasswordTokens_aspnet_Membership FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.aspnet_Membership
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.aspnet_ResetPasswordTokens SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.aspnet_Users SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
