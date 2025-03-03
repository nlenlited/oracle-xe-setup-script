--
-- Script to create the necessary (temporary) tablespaces for Intershop
--

CREATE TEMPORARY TABLESPACE IS_TEMP TEMPFILE
  SIZE 100M AUTOEXTEND ON NEXT 100M MAXSIZE UNLIMITED
  EXTENT MANAGEMENT LOCAL UNIFORM SIZE 2M;
 
CREATE TABLESPACE IS_USERS DATAFILE 
  SIZE 100M AUTOEXTEND ON NEXT 100M MAXSIZE UNLIMITED
  EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO;
 
CREATE TABLESPACE IS_INDX DATAFILE
  SIZE 100M AUTOEXTEND ON NEXT 100M MAXSIZE UNLIMITED
  EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO;
 
CREATE TABLESPACE IS_INDX_CTX DATAFILE
  SIZE 100M AUTOEXTEND ON NEXT 100M MAXSIZE UNLIMITED
  EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO;