cd '/app'
export managepath=`find $(pwd) -name manage.py`
echo $managepath
export apppath=`find $(pwd) myapp`
"python3 $managepath makemigrations $apppath"
"python3 $managepath migrate $apppath"
nohup python3 $managepath runserver &
