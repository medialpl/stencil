# Containerized Stencil

Simple, containerized BigCommerce Stencil development environment.

Works on Apple Silicon chips (Mac M1).

## Usage

### Directory structure

Place your theme in the `theme/` directory.

Git clone example: `git clone git@github.com:bigcommerce/cornerstone.git theme/`.

### Build, init & run!

#### Build

Build the image and init Stencil.

1) `docker build -t stencil_dev ./env/node_stencil`
2) `docker run --rm -it --name stencil_init -v $(pwd)/theme/:/theme -p3000:3000 stencil_dev init`

Running `init` in step 2) will trigger npm install and then, standard Stencil initialization process.

#### Init

#### Run

Use `STENCIL="<stencil_command>" docker-compose up` in order to start the container and run your theme. 

Example: `STENCIL="start -v Bold -c 1" docker-compose up`

#### Host

Theme preview should be now available at: http://localhost:3000

### Executing Stencil commands

#### In the running container

Attach to a running container anytime in order to access shell and execute `stencil` commands.

`docker exec -it stencil_dev bash` 

#### On compose

It's possible to pass `stencil` command arguments by using env variable `STENCIL` on `docker-compose` run.

Example: `STENCIL="start -v Bold -c 1" docker-compose up`.

Command above will start the Bold variant of Cornerstone theme.

### Helper scripts

#### Build

Script is bundling container build, npm install and Stencil init actions.

Name: `build.sh`

Usage: `build.sh <theme_name>`

Example: `build.sh cornerstone`

#### Start

Script is starting Stencil with the template placed in `theme/cornerstone`.

Name: `start_cornerstone.sh`
