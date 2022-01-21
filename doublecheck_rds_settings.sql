-- Double Check script to check your AWS RDS DB Settings. Note these just contain developer environment values.
-- (The values of prod/live environments will be higher.)
-- For AWS RDS, These settings cannot be set through regular SQL so please set these elsewhere, like AWS Console
--
-- Number of processes should be at least 180
    show parameter processes;
-- Number of Open cursors should be at least 500
    show parameter open_cursors
-- Case sensitive logon should be false
    show parameter sec_case_sensitive_logon