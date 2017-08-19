FROM node:7.5.0

ENV angular_cli_version=1.2.6
ENV aws-cli=1.11.135

RUN apt-get update && apt-get install -y jq python-pip zip unzip python-dev curl

# Install AWS-CLI
RUN pip install awscli==${aws-cli}

# Install Angular-CLI
RUN npm install -g @angular/cli@${angular_cli_version}
