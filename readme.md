# Contenerized Stencil dev enviroment

## Set up

### Directory structure
Place theme in `themes/<theme_name>` directory.

Or just pull Cornerstone `git clone git@github.com:bigcommerce/cornerstone.git themes/cornerstone`.

## Build

### Automated

`build.sh` will build container and init a theme placed in the `themes/cornerstone` directory.

### Manual

1) Build image: `docker build -t stencil_node ./env/node` 
2) Run container: `docker run -it -v $(pwd)/themes/<theme_name>:/theme -p3000:3000 stencil_node /bin/bash`
3) Run npm install in the container: `npm i`
4) Init Stencil in the container: `stencil init`

## Usage

### Just start Cornerstone 
Trigger `start.sh` in order to run theme placed in the `themes/cornerstone`. 

### Start with custom command
`S="start -v <template_version>" docker-compose up`

### Start with custom theme
`T="<theme_directory_in_themes>" docker-compose up`

Example:

`T="customized" docker-compose up` will start the theme placed in `themes/customized` directory.
