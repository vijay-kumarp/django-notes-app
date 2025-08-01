FROM python:3.12

WORKDIR /app/backend

COPY requirements.txt /app/backend
# RUN apt-get update \
#     && apt-get upgrade -y \
#     && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
#     && rm -rf /var/lib/apt/lists/*


# Install app dependencies
# RUN pip install mysqlclient
RUN pip install -r requirements.txt

COPY . /app/backend

EXPOSE 8000
CMD python /app/backend/manage.py runserver 0.0.0.0:8000
#RUN python manage.py migrate
#RUN python manage.py makemigrations
