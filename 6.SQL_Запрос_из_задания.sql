USE ProductsAndCategories;
SELECT ProductName, CategoryName
FROM Products
LEFT JOIN Products_Categories ON Products.ProductId = Products_Categories.ProductId
LEFT JOIN Categories ON Categories.CategoryId = Products_Categories.CategoryId
