FROM node:7.5.0

ENV angular_cli_version=1.2.6

RUN apt-get update && apt-get install -y jq python-pip zip unzip python-dev curl

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"

RUN unzip awscli-bundle.zip &&\
    ./awscli-bundle/install -b ~/bin/aws &&\
    export PATH=~/bin:$PATH

RUN npm install -g @angular/cli@${angular_cli_version}
