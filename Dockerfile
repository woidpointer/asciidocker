FROM ubuntu:20.04

RUN uname -a
RUN apt-get update
RUN apt-get install -y ruby ruby-dev
RUN apt-get install -y build-essential zlib1g-dev
RUN gem install nokogiri asciidoctor asciidoctor-revealjs

RUN useradd -ms /bin/bash dude
USER dude
WORKDIR /home/dude
