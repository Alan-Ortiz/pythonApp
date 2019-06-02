
managepath=`find . -name manage.py`
python3 $managepath makemigrations myApp
python3 $managepath migrate myApp
nohup python3 $managepath runserver &
