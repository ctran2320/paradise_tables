CREATE TABLE `orders` (
  `OrderID` varchar(8) NOT NULL,
  `Revenue` float DEFAULT NULL,
  `Date` datetime NOT NULL,
  `CustomerName` varchar(45) NOT NULL,
  `DeliveryFee` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ;
CREATE TABLE `ingredients` (
  `OrderID` varchar(8) NOT NULL,
  `IngredientID` varchar(45) NOT NULL,
  `IngredientDescription` varchar(90) NOT NULL,
  `Cost` float NOT NULL,
  `Quantity` int NOT NULL,
  `Location` varchar(90) NOT NULL
);
CREATE TABLE `labor` (
  `EmployeeName` varchar(45) NOT NULL,
  `LaborID` varchar(45) NOT NULL,
  `LaborDescription` varchar(45) NOT NULL,
  `Hours` float NOT NULL,
  `Compensation` float NOT NULL,
  `OrderID` varchar(8) NOT NULL,
  `Date` datetime NOT NULL
);
CREATE TABLE `order_details` (
  `OrderID` varchar(8) NOT NULL,
  `ItemID` varchar(45) NOT NULL,
  `ItemDescription` varchar(90) NOT NULL,
  `Quantity` int NOT NULL
);
CREATE TABLE `overhead` (
  `SupplyID` varchar(10) NOT NULL,
  `SupplyDescription` varchar(90) NOT NULL,
  `Quantity` int NOT NULL,
  `Cost` float NOT NULL,
  `Date` datetime NOT NULL
);
CREATE TABLE `personal_labor` (
  `OrderID` varchar(8) NOT NULL,
  `LaborID` varchar(45) NOT NULL,
  `LaborDescription` varchar(45) NOT NULL,
  `Hours` float NOT NULL
);
CREATE TABLE `supplies_used` (
  `SupplyID` varchar(10) NOT NULL,
  `SupplyDescription` varchar(90) NOT NULL,
  `Quantity` int NOT NULL,
  `OrderID` varchar(8) NOT NULL
) ;
