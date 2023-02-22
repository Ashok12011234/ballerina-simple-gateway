
# Ballerina Simple Gateway

Ballerina Simple Gateway is a lightweight HTTP proxy server that can be used to forward requests to a backend server.

## Usage

To use Ballerina Simple Gateway, you'll need to have Ballerina installed on your machine. Once you have Ballerina installed, you can run the following commands to build and run the server:

## Run Locally

Clone the project

```bash
  git clone https://github.com/Ashok12011234/ballerina-simple-gateway.git
```

Run gateway

```bash
  bal run gateway.bal
```

Run server

```bash
  bal run server.bal
```


## Demo

Open Postman/Thuderclient and send GET request to http://localhost:8000/hello without Token in header variable.

Then send same GET request with random token.

