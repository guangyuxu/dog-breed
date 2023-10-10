echo "==========Starting app==========" > /app/logs/app.log
python ./main_tf_serving.py >> /app/logs/app.log
echo "==========     End app==========" >> /app/logs/app.log
