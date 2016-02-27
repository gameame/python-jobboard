FROM ubuntu:15.10

RUN apt-get update && apt-get install -y python3.5

COPY . /opt/python-jobboard

WORKDIR /opt/python-jobboard

RUN python3.5 install -r requirements.txt

EXPOSE 8081

CMD python3.5 -m app
