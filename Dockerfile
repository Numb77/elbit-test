FROM python
COPY ./flask-requirements.txt /app/flask-requirements.txt
WORKDIR /app
RUN pip3 install -r flask-requirements.txt
COPY . /app
