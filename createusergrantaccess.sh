#!/bin/sh

#---------------------------------------------------
# Connecting to the Oracle Database GECMT, creating user CM_ADMIN and giving access 
# Owner : Sapna Gupta
# Date Modified : 02-Mar-2018
#---------------------------------------------------

echo "********************************"
echo "Beginning the User Creation......"
echo "********************************"	
echo "                                                            "
echo "                                                            "

sqlplus -s "system/system@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=GGMTL4M2E.logon.ds.ge.com)(PORT=1521)))(CONNECT_DATA =(SERVICE_NAME=gecmt.logon.ds.ge.com)))" << EOF
set serveroutput on
alter session set "_oracle_script"=true;
CREATE USER cm_admin IDENTIFIED BY cm_admin ;
GRANT CONNECT TO cm_admin;
GRANT CONNECT, RESOURCE, DBA TO cm_admin;
GRANT CREATE SESSION, GRANT ANY PRIVILEGE TO cm_admin;
GRANT UNLIMITED TABLESPACE TO cm_admin;
EOF

echo "*************************************"
echo "Gave all necessary GRANTS to the user"
echo "*************************************"	
echo "                                                            "
echo "                                                            " 