# Containerized Stencil

Simple, containerized BigCommerce Stencil development environment.

Works on Apple Silicon chips (Mac M1).

## Clone, install & run!

### Clone

Place your theme in the `theme/` directory.

Example: `git clone git@github.com:bigcommerce/cornerstone.git theme/`.

### Install

Trigger `npm install` and `stencil init` in the container.

`STENCIL="install" STORE_URL="<store_url>" API_TOKEN="<stencil_api_token>" docker-compose up`

Example: `STENCIL="install" STORE_URL="https://qazwsx.mybigcommerce.com/" API_TOKEN="qazwsx" docker-compose up`

### Run

Use `STENCIL="<stencil_command>" docker-compose up` in order to start the container and run your theme. 

Example: `STENCIL="start -v Bold -c 1" docker-compose up`

## Host

Access the frontend locally at: http://localhost:3000

## Executing Stencil commands

### Init

Trigger `stencil init` **without** `npm install` in the container.

`STENCIL="init" STORE_URL="<store_url>" API_TOKEN="<stencil_api_token>" docker-compose up`

Example: `STENCIL="init" STORE_URL="https://qazwsx.mybigcommerce.com/" API_TOKEN="qazwsx" docker-compose up`


### Run stencil command in the container

Use `docker exec -it <container_name> bash` and attach to a running container anytime in order to access shell and execute `stencil` commands.

`docker exec -it stencil_stencil bash` 

### Run stencil command on compose

It's possible to pass `stencil` command arguments by using env variable `STENCIL` on `docker-compose` run.

Example: `STENCIL="start -v Bold -c 1" docker-compose up`.

Command above will start the Bold variant of a theme.

### Helpers

#### Start

Customize `start.sh` with your theme (container) name, variation and channel, then just run it.