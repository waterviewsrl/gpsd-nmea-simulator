FROM python:3.8.16-alpine3.18

EXPOSE 2947 8888
COPY simulator /opt/nmea/simulator/
WORKDIR /opt/nmea/simulator
RUN apk add --update --no-cache gpsd && chmod +x /opt/nmea/simulator/start.sh

CMD ["./start.sh"]
