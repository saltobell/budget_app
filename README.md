Contributors: Sydney Altobell, Yesenia Garnica, Gordon Huang, Shirlene Jessica, Abril Ortega

Welcome to our budget app -- final name TBD. 
This is an iOS Application that helps college students manage their finances through budgeting. 

Design Document
Our target platform for our budgeting application is an iOS application using SwiftUI and XCode. 
  We made this choice because Sydney had some experience with Swift.
  Sydney has also used SwiftUI/XCode in a previous internship and at a hackathon. 
  The rest of the group will need to learn, but it should be easy to pick up. -> NOT
Used Firebase Authentication and Firebase Database 
  Firebase Authentication was used for the Login & Create an Account Page
  Abril has experience in Databases, which will be the data source for our application
  Yesenia wants to gain experience with databases
To collaborate, the group will be using Git and email
The Model-View-Controller pattern will be most useful for our architecture, which should be as modular as possible. 
  The MVC architecture will allow us to iterate on certain elements without affecting the entire system. 
  For example, if we were to update our data source from a database to a bank account, only the model would be affected.
  
Structure:
Each user has an account, which contains the user’s email, password and budget info
Users will use the email and password to log in to the application
Each user defines one budget
The budget contains a number of different categories (default)
The budget has a total dollar amount set per month
The budget has visuals to represent the categories and total amount
Visuals can be pie charts and bar graphs
The user inputs an unlimited number of transactions per month
Each transaction has a type (withdraw/deposit), method (cash, specific cards, Venmo, etc), a description (to categorize in budget), an amount and a date
Each transaction must be processed through the budget set by the user and represented in a budget’s categories. 
The user is given the tools to work towards financial literacy
Contains financial terms from an external API
Contains links to articles about investment, saving and credit score
Diagram for Database Systems:

We switched from MySQL to Firebase Authentication and Database. Firebase Database is a JSON tree with JSON objects. It is NoSQL thus it has no schema though we are able to set rules. Four parent keys would exist which would be User, Budget, Transaction, and Category and each parent key would have child nodes. The Firebase Authentication platform stores the user’s email address and password when they create an account and is retrieved when the user wants to login.
The User has userId as its primary key along with email and password as other attributes. This entity stores the application’s users. 
The Transaction parent key has transaction_Id as its primary key along with date, type, method, amount, and description as attributes.
The Budget parent key has BudgetId as its primary key along with categoryAmt, categoryName, amtSpent, amtSaved, and month as other attributes.
There exists a one to many relationship between the User entity and the Transaction entity.
Each user is able to input various transactions.
There exists a relationship between the Transaction entity and the Budget entity, since when a transaction occurs the different amount attributes in the Budget entity can be affected. 
The type attribute in transaction refers to a deposit or withdrawal which will determine whether to update the amtSpent (amount to spend) or amtSave (amount to save) in Budget entity. The description attribute in transaction will determine which categoryAmt to update in Budget entity.
There exists a one to one relationship between the User entity and Budget entity because each user only has one budget. The user will update/set his or her budget’s categories and amount to spend/save.



Activity Diagram for spending over savings category and readjusting goal

User inputs expense into savings account
After confirmation from the user, the app updates the total savings if there is enough allocated
If not, savings bar turns red and displays the new amount 
There is a system notification asking user if they would like to readjust their annual savings goal
If yes, the user can choose to either change their savings goal or increase the amount saved per month
If the user chooses to change their savings goal, they can simply input their new goal
If the user chooses to increase the amount saved, they can choose how much to increase each of their expenses by. For example, if the user inputs $1, then their inputted expense of $5 will be shown in the app as $6 so that they end up spending less than they normally would and as a result, save better
