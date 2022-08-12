FROM python:3.9

ENV PYTHONUNBUFFERED 1
RUN pip install --upgrade pip
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

COPY . /usr/src/app/

EXPOSE 80

CMD ["python", "app.py"]