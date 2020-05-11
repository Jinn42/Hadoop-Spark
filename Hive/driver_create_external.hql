  
CREATE EXTERNAL TABLE IF NOT EXISTS Jinn(
  driverId INT, name STRING, ssn INT,    
  location STRING, certified STRING, wageplan STRING)
  COMMENT 'Jinn-dsti table from drivers.csv'
  ROW FORMAT DELIMITED
  FIELDS TERMINATED BY ','
  STORED AS TEXTFILE
  LOCATION '/user/Jinn-dsti/drivers_raw'
  TBLPROPERTIES ('skip.header.line.count' = '1');
