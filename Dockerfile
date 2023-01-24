FROM python:3.10.5

MAINTAINER Andrii Cheban "andrii.cheban@gmail.com"

WORKDIR /app

COPY ["Pipfile", "Pipfile.lock", "/app/"]

RUN pip install pipenv

RUN pipenv install --system

COPY . /app

VOLUME ["/storage/data.json"]

CMD ["python", "app.py"]