CREATE TABLE [dbo].[Customers]
(
	[CustoId] INT       IDENTITY (1, 1) NOT NULL,
	[Rating] INT NOT NULL,
	[DeployId] INT NOT NULL,
	[UserId] INT NOT NULL,
	PRIMARY KEY CLUSTERED ([CustoId] ASC),
	CONSTRAINT [fk_dbo.Customers_dbo.Deployment_DeployId] FOREIGN KEY ([DeployId])
		REFERENCES [dbo].[Deployment] ([DeployId]) ON DELETE CASCADE,
	CONSTRAINT [FK_dbo.Customers_dbo.Users_UserId] FOREIGN KEY ([UserId]) 
        REFERENCES [dbo].[Users] ([UserId]) ON DELETE CASCADE
)
