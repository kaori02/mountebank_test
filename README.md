# Mountebank Test

## Prerequisite

- [Mountebank](http://www.mbtest.org/docs/gettingStarted) installed

## Run Without Docker

- Make sure your current working directory is `mountebank_test` (you can do that using `pwd` command)
- run this command

  ```sh
  mb --configfile imposters.ejs
  ```

Then you can see mountebank documentation in your local machine by simply open http://localhost:2525/ from your browser


### Create Requests to Mountebank

- GET

  you can create GET request by simply open http://localhost:7878/tutorial in your browser, you will see an empty white page there

- POST
  
  you can create POST request with this command

  ```sh
  curl -i -X POST http://localhost:7878/cancel
  ```

  and you will get this response
  
  ```sh
  HTTP/1.1 200 OK
  Connection: close
  Date: Wed, 15 Sep 2021 02:02:01 GMT
  Transfer-Encoding: chunked
  ```

  you can also do that via [Postman](https://www.postman.com/downloads/)

### Delete Imposter

You can delete the existing imposter(s) by creating a `DELETE` request to mountebank's default port (`2525`)

```sh
curl -X DELETE http://localhost:2525/imposters/7878
```

> for now we only have 1 imposter named `Tutorial` that runs on port `7878`

## Run With Docker

### Start

You can run the mountebank service using this command

```sh
docker-compose up
```

Then you can see mountebank documentation in your local machine by simply open http://192.168.200.5:9500/ from your browser

### Create Requests to Mountebank

- GET

  you can create GET request by simply open http://192.168.200.5:7878/tutorial in your browser, you will see an empty white page there

- POST
  
  you can create POST request with this command

  ```sh
  curl -i -X POST http://192.168.200.5:7878/cancel
  ```

  and you will get this response
  
  ```sh
  HTTP/1.1 200 OK
  Connection: close
  Date: Wed, 15 Sep 2021 02:02:01 GMT
  Transfer-Encoding: chunked
  ```

  you can also do that via [Postman](https://www.postman.com/downloads/). Just make sure that you don't leave the body empty. You will get this as the output:

  ```json
  {
    "message": "success"
  }
  ```

### Delete Imposter

You can delete the existing imposter(s) by creating a `DELETE` request to port `9500`

```sh
curl -X DELETE http://192.168.200.5:9500/imposters/7878
```

> for now we only have 1 imposter named `Tutorial` that runs on port `7878`


### Stop

You can stop the service by simply press `ctrl+c` then run this command

```sh
./down.sh
```

### List of Container(s)

You can see list of container(s) using this command

```sh
docker ps -a
````

### List of Image(s)

You can see list of docker image(s) using this command

```sh
docker images
````
