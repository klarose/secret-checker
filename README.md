# Secret Checker

The Secret Checker is a simple http application provided to demonstrate various methods for putting secrets into containers.
Currently, it supports loading secrets from environment variables, so you can demonstrate any method that can achieve that.

## API

The checker exposes a simple API at `http://<host>/check/{value}`. If value matches the secret stored in environment variable
`SECRET_VALUE`, the API will return HTTP 200 with the body 'YES!'. Otherwise, it will return HTTP 200 with the body `NO!`.

## Building

`docker build . -f Dockerfile -t secret-checker`


## Running

`docker run -e SECRET_VALUE=12345 -p 5000:5000 secret-checker`

`curl localhost:5000/check/12345`
