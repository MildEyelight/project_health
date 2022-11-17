#!/bin/sh
function randsleep(){
    random_num=$RANDOM
    sleep_time=`expr ${random_num} / 10` 
    echo "Program will run in ${sleep_time} seconds" 
    sleep ${sleep_time}s #random delay 0~3276s
}
# if [-e ${log_file}]
# then
#     continue
# else
    

export PATH=$PATH:$pwd
randsleep
cd /home/liyh/SYSU-HealthReport/
#填入账号密码
netid=""
password=""
nohup python -u /home/liyh/SYSU-HealthReport/main.py --netid ${netid} --password ${password}>> /home/liyh/SYSU-HealthReport/nohup.out
