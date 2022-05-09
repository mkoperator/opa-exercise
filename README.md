# Rego Authoring Experience
## Goals
Demonstrate ability to use Rego.

## Endpoints
`/v1/cars` (POST)
`/v1/cars/carid` (PUT,DELETE,GET)

## Enpoint Auth Requirements
. Everyone can run a GET
. Employees can update a car via PUT
. Employees can create new cars via POST
. Only the employee who created a car can DELETE it


## Build
Using `make all` will build and run the cli tests.

## Deploy HTTP API
Once the bundle is built, assuming docker-compose is installed and docker ios running. you can run the `docker-compose -f docker-compose.yml up` to stand up the echo api with the bundle server.

### Prerequisite
. Policy file `bundle.tar.gz` exits (cars.rego has been built)
. Running Docker
. docker-compose installed
