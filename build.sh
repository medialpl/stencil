docker build -t stencil_node ./env/node \
  && echo "$(tput setaf 1)Run: $(tput sgr0)npm i && stencil init" \
  && docker run -it -v $(pwd)/src:/theme -p3000:3000 stencil_node /bin/bash
