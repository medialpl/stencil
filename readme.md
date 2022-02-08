# Containerized Stencil

Simple, containerized BigCommerce Stencil development environment.

## Usage

### Directory structure

Themes should be placed in `themes/<theme_name>`, like `themes/cornerstone`.

Git clone example: `git clone git@github.com:bigcommerce/cornerstone.git themes/cornerstone`.

### Build & run

#### Build

Build the image and init the Stencil.

1) `docker build -t stencil_dev ./env/node_stencil`
2) `docker run -it --name stencil_init  -v $(pwd)/themes/<theme_name>:/theme -p3000:3000 stencil_dev init`

Running `init` in step 2) will trigger npm install and then, standard Stencil initialization process.

#### Run

Use `THEME=<theme_name> STENCIL=<stencil_command> docker-compose up` in order to start the container and run your theme. 

Example: `THEME=cornerstone STENCIL=start docker-compose up`

#### Host

Theme preview should be now available at: http://localhost:3000

### Executing Stencil commands

#### Running container

Attach to a running container anytime in order to access shell and execute `stencil` commands.

`docker exec -it stencil_node bash` 

#### Compose

It's possible to pass `stencil` command arguments by using env variable `STENCIL` on `docker-compose` run.

Example: `THEME=cornerstone STENCIL="start -v Bold" docker-compose up`.

Command above will start the Bold variant of Cornerstone theme. 