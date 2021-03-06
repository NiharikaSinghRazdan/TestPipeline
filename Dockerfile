FROM ubuntu:22.04
MAINTAINER Niharika
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential
COPY . /app
WORKDIR /app
RUN pip3 install flask
ENTRYPOINT ["python3"]
CMD ["app.py"]
