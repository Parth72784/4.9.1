CREATE TABLE [dbo].[Product] (
    [ProductId]    INT             IDENTITY (1, 1) NOT NULL,
    [ProductName]  VARCHAR (100)   NOT NULL,
    [Price]        DECIMAL (10, 2) NOT NULL,
    [Description]  VARCHAR (MAX)   NULL,
    [ProductImage] IMAGE           NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC)
);

