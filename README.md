# BankEase

This is a training project to learn **Java**. It was done in group with [thenriet](https://github.com/thenriet) and [MyleneCaudron](https://github.com/MyleneCaudron), during courses with the training organization *Simplon*.

This project is a desktop application to manage bank accounts.

## Features
- Add and remove clients
- Edit client's information
- See client accounts' informations
- Open and close accounts
- Edit account details like balance limit, transfer fee, etc.
- Credit, debit and transfer money

## Technologies

- Java 17
- Swing
- MySQL

## How to run the app

Here are some instructions if you want to see what the app looks like.

### Requirements
- JDK 17
- MySQL

### Download the project

Clone the repository :
```bash
git clone https://github.com/StormLbn/bankease.git
cd bankease
```

### Database configuration

- Use a script editor or terminal to run the SQL script `DB_BankEase.sql` from the `sql` folder, to create the database and tables.
- Update the database configuration file `bankease/src/dao/Connect.java` with your MySQL connexion details.

### Build and run

#### With an IDE :
- Open the `bankease` project folder (containing the source code) with your IDE.
- Set the JDK of the project, ideally Java 17 to avoid eventual conflicts - refer to your IDE's documentation if you don't know how to set JDK
- Add the mysql connector to the project's modules - again, refer to your IDE's documentation
- Run the `bankease.Main` class.

#### With a terminal :

Compile the source code as a .jar file and run the application.
In a terminal open in the `bankease/bankease` folder :

```bash
javac -encoding UTF-8 -d out src/**/*.java
cp Manifest.txt mysql-connector-j-8.3.0.jar out
cd out
jar cfm Bankease.jar Manifest.txt -C . .
java -jar Bankease.jar
```

<u>Note :</u> prefer using Java 17 to avoid eventual conflicts ; if you have more than one version of Java installed on your computer, you can choose which version to use by defining the full path of the right JDK tool
(example for compilation) :

```bash
"C:/Program Files/Java/jdk-17.0.10/bin/javac" -encoding UTF-8 -d out src/**/*.java
```