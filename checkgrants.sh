#!/bin/sh

#-----------------------------------------------------------------------------------------
# Connecting to the Oracle Database GECMT with user CM_ADMIN and checking the Privileges 
# Owner : Sapna Gupta
# Date Modified : 04-Mar-2018
#-----------------------------------------------------------------------------------------


echo "                                                            "
echo "                                                            "

sqlplus -s "cm_admin/cm_admin@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=GGMTL4M2E.logon.ds.ge.com)(PORT=1521)))(CONNECT_DATA =(SERVICE_NAME=gecmt.logon.ds.ge.com)))" << EOF
set serveroutput on
set lines 2000
column USERNAME format a30
 column PRIVILEGE format a45
SELECT * FROM USER_SYS_PRIVS;
EOF


echo "                                                            "
echo "                                                            " 