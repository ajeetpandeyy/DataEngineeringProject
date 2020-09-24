#!/bin/sh

pip install -r airflow/requirements.txt \
&& python -m py.test airflow/modules/tests/ --doctest-modules --cov airflow/modules --show-capture=no -v \
&& python -m flake8 -v
# && docker-compose up -d mongo \
# && sleep 10 \
# && docker exec -it mongo /usr/local/bin/init.sh \
# && docker-compose up -d api \
# && sleep 10 \
# && docker exec -it api ./manage.py test -k \
# && docker-compose down