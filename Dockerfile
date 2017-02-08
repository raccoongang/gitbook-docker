FROM ubuntu:16.04
MAINTAINER Dmitry Gamanenko <dmitry.gamanenko@raccoongang.com>

RUN apt-get -y update

# Install dependencies
RUN apt-get install -y curl git calibre && \
	curl -sL https://deb.nodesource.com/setup_4.x | bash - && \
	apt-get install -y nodejs && \
	npm install -g gitbook-cli

# Install latest version
RUN gitbook install 2.3.0

RUN mkdir /gitbook
WORKDIR /gitbook
RUN touch readme.md

EXPOSE 4000

CMD ["gitbook", "serve", "/gitbook"]
