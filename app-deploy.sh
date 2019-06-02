#!/bin/sh
cd '/app'
MP=`sudo find $(pwd) -name manage.py`
echo $MP
AP=`sudo find $(pwd) -name myapp`
echo $AP
echo "$(dirname -- "$AP")"
cd $AP
python3 $MP makemigrations myapp
python3 $MP migrate myapp
nohup python3 $managepath runserver && echo "finished"
exit 0
