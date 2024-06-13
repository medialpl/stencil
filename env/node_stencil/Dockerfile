FROM node:18.15.0
WORKDIR /theme
RUN npm install -g @bigcommerce/stencil-cli
COPY stencil.sh /
RUN chmod +x /stencil.sh
ENTRYPOINT ["/stencil.sh"]
EXPOSE 3000