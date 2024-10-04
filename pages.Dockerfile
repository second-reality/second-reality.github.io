FROM debian:bullseye

RUN apt update && apt install -y python3-pip
RUN pip install pydata-sphinx-theme==0.14.0 Sphinx==7.4.7
