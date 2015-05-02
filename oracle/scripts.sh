#! /bin/bash
sqlplus "/ as sysdba" << SCRIPT
@create_user.sql
commit;
exit;
SCRIPT
