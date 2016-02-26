FROM ubuntu:15.10

COPY . /opt/python-jobboard

WORKDIR /opt/python-jobboard

RUN python3.5 install -r requirements.txt

CMD python3.5 -m app
