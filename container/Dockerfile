FROM ubuntu:20.04

RUN apt-get update && \
	DEBIAN_FRONTEND="noninteractive" TZ=UTC apt-get install -y python3-mapnik python3-pip fonts-open-sans && \
	rm -rf /var/lib/apt/lists/*

RUN pip3 install MapProxy pyproj gunicorn flask

RUN mkdir /app
WORKDIR /app
COPY OSTN15_NTv2_OSGBtoETRS.gsb /app
COPY mapproxy.yaml /app
COPY gb_power.xml /app
COPY config.py /app
COPY templates /app/templates
COPY static /app/static

CMD gunicorn -w 4 -b 0.0.0.0:8080 config:application
