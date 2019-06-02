managepath=`find . -name manage.py`
python3 $managepath makemigrations myapp
python3 $managepath migrate myapp
nohup python3 $managepath runserver &
