CREATE TABLE USER(
	ID INTEGER PRIMARY KEY NOT NULL,
	NAZWA VARCHAR(50) NOT NULL,
	HASLO VARCHAR(50) NOT NULL,
	SLOWNIK_POZYCJI_ID INTEGER NOT NULL
)
CREATE TABLE SLOWNIK_POZYCJI(
	ID INT(40) PRIMARY KEY NOT NULL,
	POZYCJA VARCHAR(50) NOT NULL
)
 
CREATE TABLE ADRESY(
	ID INTEGER PRIMARY KEY NOT NULL,
	IMIE VARCHAR(50) NOT NULL,
	NAZWISKO VARCHAR(50) NOT NULL,
	ULICA VARCHAR(100) NOT NULL,
	MIASTO VARCHAR(50) NOT NULL
	KOD_POCZTOWY VARCHAR(6) NOT NULL,
	NUMER_DOMU VARCHAR(4) NOT NULL,
	NUMER_LOKALU VARCHAR(4) 
)
 CREATE TABLE PRODUKTY(
	ID INTEGER PRIMARY KEY NOT NULL, 
	NAZWA VARCHAR(250) NOT NULL,
	SKU INTEGER NOT NULL, 
	CENA_JEDNOSTKOWA DECIMAL(5,2) NOT NULL 
)

CREATE TABLE ZAMOWIENIA(
	ID INTEGER PRIMARY KEY NOT NULL,
	ID_ADRES INTEGER NOT NULL, 
	WARTOSC DECIMAL(10,2) NOT NULL,
	DATA DATE NOT NULL,
	ID_TYP_DOSTAWY INTEGER NOT NULL, 
	ID_PLATNOSCI INTEGER
)

CREATE TABLE TYP_DOSTAWY(
	ID INTEGER PRIMARY KEY NOT NULL, 
	WARTOSC VARCHAR(50) NOT NULL 
)

CREATE TABLE PLATNOSCI(
	ID INTEGER PRIMARY KEY NOT NULL, 
	TYP VARCHAR(50) NOT NULL,
	WARTOSC DECIMAL(10,2) NOT NULL, 
	POSREDNIK VARCHAR(2000) NOT NULL,
	DATA DATE)
CREATE TABLE ZAMOW_PRODUKT(
	ID INT PRIMARY KEY NOT NULL,
	ID_ZAMOWIENIE INTEGER NOT NULL, 
	ID_PRODUKT INTEGER NOT NULL,
	ILOSC INTEGER NOT NULL
)
