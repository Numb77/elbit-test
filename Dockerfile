FROM ubuntu:16.04
RUN apt-get update -y && \
    apt-get install -y python3-pip
COPY ./flask-requirements.txt /app/flask-requirements.txt
WORKDIR /app
RUN pip3 install -r flask-requirements.txt
COPY . /app
ENTRYPOINT python3
CMD [ "flask-app.py" ]
