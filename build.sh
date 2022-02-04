docker build -t stencil_node ./env/node \
  && docker run -it -v $(pwd)/themes/cornerstone:/theme -p3000:3000 stencil_node init
