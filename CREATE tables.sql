CREATE TABLE RPT.DimDATE
(
	DateKey INT NOT NULL,
	FullDate DATE NOT NULL,
	DayNameAbrev VARCHAR(50) NOT NULL,
	WeekMonSun VARCHAR(50) NOT NULL,
	WeekMonSunNumber TINYINT NOT NULL,
	WeekMonSunDate DATE NOT NULL,
	WeekSunSat VARCHAR(50) NULL,
	WeekSunSatNumber TINYINT NULL,
	WeekSunSatDate DATE NULL,
	CalendarMonth VARCHAR(50) NOT NULL,
	CalendarMonthNumber TINYINT NOT NULL,
	CalendarQuarter VARCHAR(50) NOT NULL,
	CalendarQuarterNumber TINYINT NOT NULL,
	CalendarYear VARCHAR(50) NOT NULL,
	CalendarYearNumber SMALLINT NOT NULL,
	FiscalMonth VARCHAR(50) NOT NULL,
	FiscalMonthNumber TINYINT NOT NULL,
	FiscalQuarter VARCHAR(50) NOT NULL,
	FiscalQuarterNumber TINYINT NOT NULL,
	FiscalYear VARCHAR(50) NOT NULL,
	FiscalYearNumber SMALLINT NOT NULL,
	IsLastDayOfMonth BIT NOT NULL,
	IsWorkDay BIT NOT NULL,
	CONSTRAINT DIMDATE_KEY PRIMARY KEY (DATEKEY)
)；




CREATE TABLE RPT.DimDevice
(
	DeviceKey INT NOT NULL AUTO_INCREMENT,
	DeviceID VARCHAR(200) NOT NULL,
	DeviceName VARCHAR(100) NOT NULL,
	DeviceType VARCHAR(50) NOT NULL,
	CONSTRAINT DIMDEVICE_KEY PRIMARY KEY (DeviceKey)
);




CREATE TABLE RPT.DimLedger
(
	LedgerKey INT NOT NULL,
	LedgerName VARCHAR(50) NOT NULL,
	CONSTRAINT DIMLEDGER_KEY PRIMARY KEY (LedgerKey)
);




CREATE TABLE RPT.DimProduct
(
	ProductKey INT NOT NULL AUTO_INCREMENT,
	ProductID VARCHAR(500) NOT NULL,
	ProductName VARCHAR(500) NOT NULL,
	EditorialLevel1 VARCHAR(200) NOT NULL,
	EditorialLevel2 VARCHAR(200) NOT NULL,
	CONSTRAINT IMPRODUCT_KEY PRIMARY KEY (ProductKey)
);




CREATE TABLE RPT.FactPagePerformance
(
	DATEKey INT NOT NULL,
	ProductKey INT NOT NULL,
	DeviceKey INT NOT NULL,
	LedgerKey INT NOT NULL,
	PageViews INT NOT NULL,
	Visits INT NOT NULL,
	UniqueVisitors INT NOT NULL,
);

COMMIT;

