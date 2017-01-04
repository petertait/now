FROM ubuntu:trusty
MAINTAINER Allan Moreno <hello@heyallan.com>
LABEL name "kirbynow"

RUN DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apache2 php5 libapache2-mod-php5 && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN a2enmod rewrite

RUN sed -i -e '/<Directory \/var\/www\/html/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf
RUN sed -i -e 's/#.*//' /etc/apache2/apache2.conf
RUN sed -i -e '/^$/ d' /etc/apache2/apache2.conf

RUN  rm -fr /var/www/html/*
COPY . /var/www/html/

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"
