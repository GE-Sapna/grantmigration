#!/bin/sh

#-----------------------------------------------------------------------------------------
# Dropping User CM_ADMIN 
# Owner : Sapna Gupta
# Date Modified : 04-Mar-2018
#-----------------------------------------------------------------------------------------


echo "********************************"
echo "Dropping User CM_ADMIN......"
echo "********************************"	
echo "                                                            "
echo "                                                            "

sqlplus -s "system/system@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=GGMTL4M2E.logon.ds.ge.com)(PORT=1521)))(CONNECT_DATA =(SERVICE_NAME=gecmt.logon.ds.ge.com)))" << EOF
set serveroutput on
alter session set "_oracle_script"=true;
drop user cm_admin cascade;
EOF


echo "                                                            "
echo "                          --------                          "