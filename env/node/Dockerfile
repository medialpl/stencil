FROM node:12
WORKDIR /theme
RUN npm -g config set user root
RUN npm install -g @bigcommerce/stencil-cli
RUN npm i
ENTRYPOINT ["stencil"]
CMD ["--help"]
EXPOSE 3000