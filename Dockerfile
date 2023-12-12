FROM python:3.11-alpine3.18

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./cfgexplorer /code/cfgexplorer

CMD ["gunicorn", "cfgexplorer.looper:app", "--bind=0.0.0.0:80"]
