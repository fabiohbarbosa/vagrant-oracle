create user erm_user identified by erm default tablespace system;
GRANT CREATE session, CREATE table, CREATE view,  CREATE procedure,CREATE synonym,
  ALTER table, ALTER view, ALTER procedure,ALTER synonym,
  DROP table, DROP view, DROP procedure,DROP synonym
  TO MyRole;
GRANT MyRole to erm_user;
commit;
