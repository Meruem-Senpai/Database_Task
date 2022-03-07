USE ProductsAndCategories;

CREATE TABLE Categories
(
  CategoryId INT IDENTITY(1,1) PRIMARY KEY,
  CategoryName NVARCHAR(50) UNIQUE NOT NULL
)

CREATE TABLE Products
(
  ProductId INT IDENTITY(1,1) PRIMARY KEY,
  ProductName NVARCHAR(30) UNIQUE NOT NULL
)

CREATE TABLE Products_Categories
(
	ProductId INT NOT NULL ,
	CategoryId INT NOT NULL,
	PRIMARY KEY (ProductId, CategoryId),
	CONSTRAINT FK_CategoryId FOREIGN KEY (CategoryId) REFERENCES Categories (CategoryId),
	CONSTRAINT FK_ProductId FOREIGN KEY (ProductId) REFERENCES Products (ProductId)
)