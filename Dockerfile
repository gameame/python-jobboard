FROM ubuntu:15.10

RUN apt-get update && apt-get install -y python-virtualenv

RUN apt-get install -y python3.5

COPY . /opt/python-jobboard

WORKDIR /opt/python-jobboard

RUN virtualenv -p python3.5 /opt/v

RUN /opt/v/bin/pip install -r requirements.txt

EXPOSE 8081

CMD /opt/v/bin/python -m app
