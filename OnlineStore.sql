use OnlineStore

insert into dbo.Customer
values (1,'Bassam','Bassam@gmail.com','Cairo','010xxxxxxxx','2026-10-06')

insert into dbo.Suppliers
values (1,'Bassam','Egypt','Bassam@gmail.com','Cairo','010xxxxxxxx'),
(2,'Besso','France','Besso@gmail.com','Paris','011xxxxxxxx'),
(3,'Bassam','Italy','Bassam@gmail.com','Roma','012xxxxxxxx')

insert into dbo.Categories
values (1,'Electronics','Anything With Electric'),
(2,'Games','Anything With PS5')

insert into dbo.Products 
(productId,Name,Price)
values (100,'GTA6',122.5)

Create table ArchivedStock (TranId int Primary Key, ProductId int not null, QuantityChange int, 
TranDate Date)

INSERT INTO ArchivedStock (TranId, ProductId, QuantityChange, TranDate)
SELECT 
    TranId, 
    ProductId, 
    QuantityChange, 
    TranDate
FROM 
    dbo.StockTransactions
WHERE 
    TranDate < '2023-01-01';


update dbo.Products
set Price*=0.10
where Price<100

update dbo.Orders
set Status=case
                when TotalAmount>5000 then 'Premium'
                else 'standard'
                end