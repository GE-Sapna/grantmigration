 #!/bin/bash
    echo "************************************"
    echo "Beginning the Script Execution......"
    echo "************************************"	
    sleep 1
    sh ./connectdb.sh
	sleep 1
    sh ./createusergrantaccess.sh
	sleep 1
    sh ./connectuser.sh
	sleep 1
	sh ./checkgrants.sh
    echo "*****_______*****_______"