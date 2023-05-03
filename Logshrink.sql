-- Create new log file

ALTER DATABASE SP23_ksassyed ADD LOG FILE ( NAME = N'ksassyed_log_new', FILENAME = N'L:\SP23_ksassyed_log_new.ldf')

use SP23_ksassyed
go

-- Truncate the log by changing the database recovery model to SIMPLE.

ALTER DATABASE SP23_ksassyed
SET RECOVERY SIMPLE;
GO

-- Shrink the truncated log file to 1 MB.

DBCC SHRINKFILE ('SP23_ksassyed', 1);
GO

-- Reset the database recovery model.

ALTER DATABASE SP23_ksassyed
SET RECOVERY FULL;
GO
