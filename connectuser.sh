#!/bin/sh

#----------------------------------------------------------------------------------
# Connecting to the Oracle Database GECMT, creating user CM_ADMIN and giving access 
# Owner : Sapna Gupta
# Date Modified : 02-Mar-2018
#-----------------------------------------------------------------------------------

echo "*****************************************"
echo "Connecting to the New User ....."
echo "*****************************************"	
echo "                                                            "
echo "Current User is  as Follows :                                            "

sqlplus -s "cm_admin/cm_admin@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=GGMTL4M2E.logon.ds.ge.com)(PORT=1521)))(CONNECT_DATA =(SERVICE_NAME=gecmt.logon.ds.ge.com)))" << EOF
set heading off feedback off verify off
Select user from dual;

EOF

echo "******************************************"
echo "Next Step will be to check the User Grants"
echo "******************************************"	
echo "                                                            "
echo "                                                            " 