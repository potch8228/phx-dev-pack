# docker-phoenix
Docker image for Elixir and Phoenix framework ready runtime system based on Ubuntu/CentOS/Alpine with MySQL.

## Usage
cd ./

docker-compose up

## Remarks
 - Phoenix Framework based (or any other Elixir web app) project need to be placed directly under the webapp directory
   - Some Hex dependencies will be need to be compiled on container image, execute `docker-compose exec web mix deps.compile`
 - Comes with MySQL Docker image (with the latest version at the time of building docker image)
 - Erlang and Elixir (and nodejs) will be the latest of the time of building docker image (excludes CentOS version)

## License
GPLv2 from MySQL
