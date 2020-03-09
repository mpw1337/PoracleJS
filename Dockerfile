FROM ubuntu:18.10

# CURL
RUN apt-get -y update && apt-get install -y curl

# gnupg2
RUN apt-get -y update && apt-get install -y gnupg2

# NodeJS
RUN apt-get install -y nodejs

# Git
RUN apt-get -y update && apt-get install -y git

# PoracleJS
RUN git clone https://github.com/KartulUdus/PoracleJS.git --branch v4 && cd PoracleJS && npm install

WORKDIR PoracleJS

CMD npm start
