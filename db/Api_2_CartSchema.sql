CREATE TABLE Purchase (
	Id INT IDENTITY(1,1),
	UserId INT NOT NULL,
	Total DECIMAL NOT NULL,
	Discount DECIMAL NOT NULL,
	Freight DECIMAL NOT NULL,
	Status INT NOT NULL,
	CONSTRAINT PK_Purchase PRIMARY KEY (Id),
	CONSTRAINT FK_Purchase_User FOREIGN KEY (UserId) REFERENCES ApplicationUser (Id)
);

CREATE TABLE AnimalPurchase (
	AnimalId INT NOT NULL,
	PurchaseId INT NOT NULL,
	Price DECIMAL NOT NULL,
	Discount DECIMAL NOT NULL,
	CONSTRAINT FK_AnimalPurchase_Animal FOREIGN KEY (AnimalId) REFERENCES Animal (AnimalId),
	CONSTRAINT FK_AnimalPurchase_Purchase FOREIGN KEY (PurchaseId) REFERENCES Purchase (Id)
);