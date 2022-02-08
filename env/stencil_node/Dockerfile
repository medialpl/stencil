FROM ubuntu:18.04
SHELL ["/bin/bash", "--login", "-c"]
RUN apt-get update && apt-get install -y python3 libsass-dev g++ build-essential git curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install -y nodejs
WORKDIR /theme
COPY stencil.sh /
RUN chmod +x /stencil.sh
RUN npm -g config set user root && npm install -g @bigcommerce/stencil-cli
ENTRYPOINT ["/stencil.sh"]
EXPOSE 3000
