BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "mentor" (
	"SSN"	INTEGER NOT NULL,
	"FName"	TEXT,
	"LName"	TEXT,
	"salary"	REAL,
	PRIMARY KEY("SSN")
);
CREATE TABLE IF NOT EXISTS "topic" (
	"idT"	INTEGER NOT NULL,
	"title"	TEXT,
	"id-cohort"	INTEGER,
	"id-mentor"	INTEGER,
	PRIMARY KEY("idT")
);
CREATE TABLE IF NOT EXISTS "student" (
	"no"	INTEGER NOT NULL,
	"SSN"	INTEGER,
	"FName"	TEXT,
	"Lname"	TEXT,
	"id-cohort"	INTEGER,
	PRIMARY KEY("no")
);
CREATE TABLE IF NOT EXISTS "cohort" (
	"idC"	INTEGER NOT NULL,
	"startDate"	date,
	"endDate"	date,
	PRIMARY KEY("idC")
);
CREATE TABLE IF NOT EXISTS "departement" (
	"idD"	INTEGER NOT NULL,
	"name"	varchar(20),
	"office"	varchar(20),
	PRIMARY KEY("idD")
);
COMMIT;
