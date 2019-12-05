DROP TABLE Transaction;
DROP TABLE Category;
DROP TABLE Budget;
DROP TABLE Users;

CREATE TABLE Users(
	userID		INTEGER PRIMARY KEY,
	name		VARCHAR(30),
	email		VARCHAR(100),
	password	VARCHAR(20)
);	

CREATE TABLE Transaction(
	transactionID	INTEGER,
	userID		INTEGER REFERENCES Users(userID),
	budgetID	INTEGER REFERENCES Budget(budgetID),
	amount		DECIMAL(8,2),
	day		Date,
	type_		VARCHAR(15),
	method		VARCHAR(15),
	description	VARCHAR(25),
	PRIMARY KEY(transactionID, userID)
);

CREATE TABLE Budget(
	budgetID	VARCHAR(10),
	userID		INTEGER REFERENCES Users(userID),
	month		VARCHAR(10),
	amountSaved	DECIMAL(8,2),
	amountSpent	DECIMAL(8,2),
	PRIMARY KEY(budgetID, userID)
);

CREATE TABLE Category(
	userID		INTEGER REFERENCES Users(userID),
	budgetID	INTEGER REFERENCES Budget(budgetID),
	food		DECIMAL(8,2),
	housing		DECIMAL(8,2),
	utilities	DECIMAL(8,2),
	transportation	DECIMAL(8,2),
	entertaintment	DECIMAL(8,2),
	school 		DECIMAL(8,2),
	other		DECIMAL(8,2),
	PRIMARY KEY(userID, budgetID)
);