FROM debian:bullseye

RUN apt update && apt install -y python3-pip
RUN pip install pydata-sphinx-theme==0.7.0 sphinx==4.2.0
