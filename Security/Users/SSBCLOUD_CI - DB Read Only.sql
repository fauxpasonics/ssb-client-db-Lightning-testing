IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'SSBINFO\CI - DB Read Only')
CREATE LOGIN [SSBINFO\CI - DB Read Only] FROM WINDOWS
GO
CREATE USER [SSBCLOUD\CI - DB Read Only] FOR LOGIN [SSBINFO\CI - DB Read Only]
GO
