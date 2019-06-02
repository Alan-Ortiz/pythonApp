#!/bin/sh
cd '/app'
MP=`find $(pwd) -name manage.py`
echo $MP
AP=`find $(pwd) -name myapp`
echo $AP
echo "$(dirname -- "$AP")"
cd $AP
python3 $MP makemigrations myapp
python3 $MP migrate myapp
nohup python3 $MP runserver && echo "finished"
exit 0
