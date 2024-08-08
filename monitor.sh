#!/bin/bash

if [ ! -f /home/joachim/workshop/Logs/log1.txt ]; then
        touch /home/joachim/workshop/Logs/log1.txt
        echo "log1.txt file created in Logs directory" >> /home/joachim/workshop/Logs/monitor_log.txt
else
        echo "log1.txt file already exists in Logs directory" >>/home/joachim/workshop/Logs/monitor_log.txt
fi

for ((i=1; i<=5; i=i+1))
do
	date >> /home/joachim/workshop/Logs/log1.txt
        echo "$(date)" >> /home/joachim/workshop/Logs/monitor_log.txt    
	sleep 60
done
echo "Finished appending date and time every minute for 5 minutes" >> /home/joachim/workshop/Logs/monitor_log.txt

