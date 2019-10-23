FROM ubuntu:latest
MAINTAINER Dimitrij Borisov <dimitrij.borisov@dedrone.com>

# Set noninteractive shell mode
ENV DEBIAN_FRONTEND=noninteractive

# Do the nesseccary apt stuff
RUN apt-get update && apt-get install -y python3-scipy python3-matplotlib python3-pil python3-django python3-bs4 python3-reportlab imagemagick gifsicle python3-psutil python3-pip git

# Do the pip stuff
RUN pip3 install pyeq3

# Get ZunZunSite3 from repo
RUN git clone https://bitbucket.org/zunzuncode/zunzunsite3.git /zunzun/

WORKDIR /zunzun/
EXPOSE 8080
CMD python3 manage.py runserver 0.0.0.0:8080
