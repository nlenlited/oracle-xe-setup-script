--
-- Script to create an intershop user for intershop to use 
-- use any username or password you choose
--
DEFINE _us         = intershop
DEFINE _pw         = intershop
DEFINE _ts_temp    = IS_TEMP
DEFINE _ts_user    = IS_USERS
 
CREATE USER &_us
  IDENTIFIED BY &_pw
  DEFAULT TABLESPACE &_ts_user
  TEMPORARY TABLESPACE &_ts_temp
  PROFILE DEFAULT ACCOUNT UNLOCK;
 
ALTER USER &_us DEFAULT ROLE ALL;
 
GRANT CONNECT                       TO &_us;
GRANT RESOURCE                      TO &_us;
GRANT CTXAPP                        TO &_us;
GRANT UNLIMITED TABLESPACE          TO &_us;
GRANT CREATE CLUSTER                TO &_us;
GRANT CREATE DATABASE LINK          TO &_us;
GRANT CREATE SEQUENCE               TO &_us;
GRANT CREATE SYNONYM                TO &_us;
GRANT CREATE TABLE                  TO &_us;
GRANT CREATE VIEW                   TO &_us;
GRANT CREATE PROCEDURE              TO &_us;
GRANT CREATE TRIGGER                TO &_us;
GRANT CREATE TYPE                   TO &_us;
GRANT CREATE SNAPSHOT               TO &_us;
GRANT ANALYZE ANY                   TO &_us;
GRANT EXECUTE ON CTX_DDL            TO &_us;
GRANT EXECUTE ON DBMS_STREAMS_ADM   TO &_us;