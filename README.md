### Intershop Database (Pre-dbinit) Preperations Scripts
This repo contains a few scripts to help you set up your oracle database before running dbinit.
It was derived from "IntershopCommunicationsAG/oracle-xe-setup-script", but has been refactored to be ran in a program like SQL Developer.
AND to be more compatible like a Database like AWS RDS (Which doesn't support setting parameters through SQL and uses datafiles differently)

### Preconditions
* Oracle endpoint to connect to (only tested with 19c)
* Program like Oracle SQL Developer (Which is able to run both full scripts or single statements)
* Access to the root user of the database
* Optional: Modify prepare_user.sql and specify the username and password you would like intershop to connect with.(default: intershop/intershop)
* For AWS RDS: Please configure Oracle parameters: processes, open_cursors and sec_case_sensitive_logon (e.g. through AWS Console)

### How to use
- Open SQL Developer (Or any other SQL program which is able to run both scripts and lines within scripts)
- Connect to the database you want to prepare
- Open and run prepare_db.sql
- Uncomment the last line of prepare_db.sql and only run the last line
- Open and run prepare_tablespace.sql
- Open and run prepare_user.sql
- Optional: To doublecheck your database settings, open and run doublecheck_rds_settings.sql
- Restart your database