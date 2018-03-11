#!/bin/sh

#---------------------------------------------------
# Connecting to the Oracle Database GECMT and printing Instance Name
# Owner : Sapna Gupta
# Date Modified : 01-Mar-2018
#---------------------------------------------------
echo "                                                            "
echo "                                                            "
echo "      You are now connected with the following Instance :   "
echo "                                                            "
echo "                                                            "
sqlplus -s "system/system@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=GGMTL4M2E.logon.ds.ge.com)(PORT=1521)))(CONNECT_DATA =(SERVICE_NAME=gecmt.logon.ds.ge.com)))" << EOF
set heading off feedback off verify off
select instance_name from v\$instance;
EOF

 


