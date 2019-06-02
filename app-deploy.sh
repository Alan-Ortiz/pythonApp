#!/bin/sh
cd '/app'
MP=`find $(pwd) -name manage.py`
echo $MP
AP=`find $(pwd) myapp`
echo $AP
python3 $MP makemigrations $AP
python3 $MP migrate $AP
nohup python3 $managepath runserver &
exit 0
