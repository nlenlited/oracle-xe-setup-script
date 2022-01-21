-- 
-- Script to prepare the CTXSYS database user for use with Intershop
-- Script is ran manually in a program like SQL Developer in two parts;
-- Connect with a root user and run the full script
-- Reconnect with the database (As the script will switch to the ctxuser, but has no means to switch back to root)
-- Uncomment the last line in the script and only run that line
-- Done.
--


-- Unlock the CTXSYS user
ALTER user ctxsys account unlock;
ALTER user ctxsys identified by ctxsys;

-- Grants with Grant Option for CTXSYS User and Lock CTXSYS Again
connect ctxsys/ctxsys;
 
GRANT EXECUTE ON CTX_DDL TO sys    WITH GRANT OPTION;
GRANT EXECUTE ON CTX_DDL TO system WITH GRANT OPTION;

-- Please manually reconnect with the database and run the following statement:
--ALTER user ctxsys account lock;