#!/bin/bash
# Author : FMB237
Max_Count=30
echo "Staring of task for ${Max_Count} seconds . PID: $$ "
echo "Output is being redirected to long_task.log"

echo "----- Task started at ${date} ....."  > long_task.long
for i in $(seq 1 ${Max_Count}); do
    echo "Processing second $i of ${Max_Count} ....." >> long_task.log
    sleep 1
done
echo " ------ Task finished at ${date} "
echo "------ Long task finished. Check long_task.log for more details"
exit 0
