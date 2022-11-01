#!/bin/bash

# Создание БД
sleep 10
airflow upgradedb
sleep 10

# # auth
# python /usr/local/airflow/script/auth.py

airflow users create \
          --username admin \
          --firstname admin \
          --lastname admin \
          --role Admin \
          --email admin@example.org \
          -p admin


# Запуск шедулера и вебсервера
airflow scheduler & airflow webserver


