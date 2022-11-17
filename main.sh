#!/bin/bash
python -m pip install retrying selenium pillow onnxruntime #最好整个requirements.txt

now_dir=$(cd `dirname $0`; pwd)
script_dir=$now_dir/cron.sh
echo "0 7 * * * "$script_dir > tmp.cron

crontab tmp.cron
rm tmp.cron
