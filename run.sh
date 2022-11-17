#!/bin/sh
now_dir=$(cd `dirname $0`; pwd)
log_file=$now_dir/$(date +"%Y-%m-%d").log.out

random_num=$RANDOM
sleep_time=`expr ${random_num} / 10` 
echo "Program will run in ${sleep_time} seconds" >> $log_file 
sleep ${sleep_time}s #random delay 0~3276s
export PATH=$PATH:$now_dir


#填入账号密码
netid=""
password=""
nohup python -u $now_dir/main.py --netid ${netid} --password ${password} >> $log_file
