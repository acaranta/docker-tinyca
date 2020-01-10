FROM jlesage/baseimage-gui:ubuntu-18.04


RUN apt-get update && apt-get install -y tinyca
RUN mkdir /app
WORKDIR /root
ADD sslcert.png /app
ADD startapp.sh /startapp.sh
RUN APP_ICON_URL=file:///app/sslcert.png && install_app_icon.sh "$APP_ICON_URL"
RUN mkdir -p /.TinyCA/tmp
ENV APP_NAME="TinyCA"
ENV TINYCA_BASEDIR="/app/data"
ENV TINYCA_EXPORTDIR="/app/export"
