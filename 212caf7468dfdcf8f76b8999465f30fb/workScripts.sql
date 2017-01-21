CREATE TABLE [dbo].[Deployment]
(
	[DeployId] INT        IDENTITY (1, 1) NOT NULL,
	[Timeframe] NVARCHAR (50) NOT NULL,
	[Location] NVARCHAR (50) NOT NULL,
	PRIMARY KEY CLUSTERED ([DeployId] ASC)
)