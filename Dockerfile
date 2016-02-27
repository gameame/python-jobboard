FROM ubuntu:15.10

COPY . /opt/python-jobboard

WORKDIR /opt/python-jobboard

RUN virtualenv /opt/v -p python3.5

RUN /opt/v/bin/pip install -r requirements.txt

EXPOSE 8081

CMD /opt/v/bin/python -m app
