FROM python:3.9

ADD . /usr/src/app
WORKDIR /usr/src/app

# Setting app the environment
COPY requirements.txt ./
RUN  pip install --no-cache-dir -r requirements.txt

# Setting up the server
EXPOSE 8000

# Default command to execute
CMD exec gunicorn gcp_api_test.wsgi:application --bind 0.0.0.0:8000 --workers 1

