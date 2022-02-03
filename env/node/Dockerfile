FROM node:12
WORKDIR /theme
COPY stencil.sh /
RUN chmod +x /stencil.sh
RUN npm -g config set user root
RUN npm install -g @bigcommerce/stencil-cli
RUN npm install -g @bigcommerce/stencil-utils
ENTRYPOINT ["/stencil.sh"]
EXPOSE 3000
EXPOSE 8181