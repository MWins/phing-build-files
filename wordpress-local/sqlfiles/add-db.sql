CREATE DATABASE %%DB_NAME%% ;

CREATE USER '%%DB_USER%%'@'localhost' IDENTIFIED BY '%%DEFAULT_PASSWORD%%';

GRANT ALL ON %%DB_NAME%%.* TO '%%DB_USER%%';
