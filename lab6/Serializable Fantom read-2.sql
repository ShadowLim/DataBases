USE CELLULAR;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

BEGIN TRANSACTION;

INSERT INTO JOB
	VALUES(405, N'������ ������');

COMMIT;

WAITFOR DELAY '00:00:05';

DELETE FROM JOB
	WHERE [function] = N'������ ������';