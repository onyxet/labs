FROM ubuntu:14.04
RUN apt update && apt -y upgrade && apt -y install sudo python-software-properties software-properties-common curl git build-essential python language-pack-en-base && LC_ALL=en_US.UTF-8 add-apt-repository -y ppa:ondrej/php && apt update &&\
    apt install -y php7.1-zip unzip libxml2-dev php7.1-mbstring php7.1-bcmath php7.1-xml libphp7.1-embed php7.1-curl php7.1-dev php7.1-mysql php7.1-mcrypt php-apcu php-pear php7.1-gd php-redis php7.1-intl php-imagick libcurl4-openssl-dev && \
    cd /opt && curl -O https://projects.unbit.it/downloads/uwsgi-2.0.14.tar.gz && tar -zxvf uwsgi-2.0.14.tar.gz && cd uwsgi-2.0.14 && rm /opt/uwsgi-2.0.14.tar.gz
ADD own.ini /opt/uwsgi-2.0.14/buildconf/own.ini
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - && apt-get install --yes nodejs && npm install -g bower && npm install -g grunt && npm install -g npm@3.3.12 && \
    curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer && \
	cd /opt/uwsgi-2.0.14 && python uwsgiconfig.py --build own && cp uwsgi /usr/bin/uwsgi
CMD ["uwsgi", "--pidfile2=/tmp/uwsgi.pid", "--die-on-term"] 