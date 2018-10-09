FROM ubuntu:bionic
RUN apt update && apt install -y curl gnupg2
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
ADD hugo_extended_0.49_Linux-64bit.deb .
RUN dpkg -i hugo_extended_0.49_Linux-64bit.deb
RUN hugo version
RUN npm version