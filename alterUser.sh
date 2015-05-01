#! /bin/bash
sqlplus "/ as sysdba" << EOF
alter user SYS identified by "admin";
commit;
conn / as sysdba;
ALTER SYSTEM SET O7_DICTIONARY_ACCESSIBILITY=TRUE scope=spfile;
shutdown immediate;
startup;
create user erm_user identified by erm default tablespace system;
GRANT CREATE session, CREATE table, CREATE view,  CREATE procedure,CREATE synonym,
  ALTER table, ALTER view, ALTER procedure,ALTER synonym,
  DROP table, DROP view, DROP procedure,DROP synonym
  TO MyRole;
GRANT MyRole to erm_user;
exit;
EOF
