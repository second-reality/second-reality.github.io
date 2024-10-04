FROM debian:bullseye

RUN apt update && apt install -y python3-pip
RUN pip install pydata-sphinx-theme==0.15.4 Sphinx==7.4.7
