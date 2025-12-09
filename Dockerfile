FROM ubuntu:latest

RUN apt update && apt install -y python3

RUN mkdir -p /home

COPY main.py /home/ubuntu/main.py

WORKDIR /home/ubuntu

CMD ["python3", "main.py"]
