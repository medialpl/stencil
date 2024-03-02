# Containerized Stencil

Simple, containerized BigCommerce Stencil development environment.

Works on Apple Silicon chips (Mac M1).

## Clone, install & run!

### Clone

Place your theme in the `theme/` directory.

Git clone example: `git clone git@github.com:bigcommerce/cornerstone.git theme/`.

### Install

`THEME="<theme_name>" STENCIL="install" docker-compose up`

Example: `THEME="cornerstone" STENCIL="init" docker-compose up`

### Run

Use `THEME="<theme_name> STENCIL="<stencil_command>" docker-compose up` in order to start the container and run your theme. 

Example: `THEME="cornerstone" STENCIL="start -v Bold -c 1" docker-compose up`

## Host

Access the frontend locally at: http://localhost:3000

## Executing Stencil commands

### In the running container

Use `docker exec -it stencil_<theme_name> bash` and attach to a running container anytime in order to access shell and execute `stencil` commands.

`docker exec -it stencil_cornerstone bash` 

### On compose

It's possible to pass `stencil` command arguments by using env variable `STENCIL` on `docker-compose` run.

Example: `THEME="cornerstone" STENCIL="start -v Bold -c 1" docker-compose up`.

Command above will start the Bold variant of a theme.

### Helpers

#### Start

Customize `start.sh` with your theme (container) name, variation and channel, then just run it.