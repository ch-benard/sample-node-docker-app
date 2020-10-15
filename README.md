# sample-node-docker-app

This is a sample node application using **envsubst** to replace TEST and PORT variables contained in .env file by env variables.

These env variables can be set by:

```bash
docker run ... -e TEST="Some message" -e PORT=3000
```

The app is started by the command:

```bash
node app.js
```
contained in the start.sh script

To build the image:

```bash
docker build -t sample-node-docker-app:0.1
```

One way to execute the app is by running it with docker:

```bash
docker run -p 3000:9000 -e TEST="this is a message" -e PORT="9000" -ti sample-node-docker-app:0.1
```

Another way is to use docker-compose and a compose file:


docker-compose.yml:

```yml
version: "3.4"

services:
  api:
    image: sample-node-docker-app:0.1
    container_name: sample-node-app
    ports:
      - "3000:9000"
    environment:
      - TEST=Hello World for the first time!
      - PORT=9000
```

This work is mainly inspired by [this repo](https://github.com/Dvelezs94/sample-node-docker). I just added the docker-compose way to start the app.
