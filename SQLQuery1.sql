CREATE TABLE Product (
	Id int not null identity(1,1) primary key,
	[Name] nvarchar(50) not null,
	[Description] nvarchar(max) null,
	Price money not null
)

CREATE TABLE Customer (
	Id int not null identity(1,1) primary key,
	FirstName nvarchar(50) not null,
	LastName nvarchar(50) not null,
	Email nvarchar(100) null,
	Phone nvarchar(10) null
)
GO

CREATE TABLE [Order] (
	Id int not null identity(1,1) primary key,
	OrderDate datetime not null,
	CustomerId int not null references Customer(Id)
)
GO

CREATE TABLE OrderProduct (
	OrderId int not null references [Order](Id),
	ProductId int not null references Product(Id),
	Quantity int not null

	primary key (OrderId, ProductId)
)