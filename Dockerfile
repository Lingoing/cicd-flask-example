FROM python:3.7.14-buster
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD [ "gunicorn" , "app:app", "-c", "gunicorn.conf.py"]