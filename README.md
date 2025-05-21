# IKMDEV-SITE

This project is designed to build a Docker container using Nginx to serve static content. The container is 
automatically built and published to Docker Hub using GitHub Actions.

## Prerequisites

1. A Docker Hub account for downloading/using the image created. If you don't have one, you can create it 
[here](https://hub.docker.com/signup).
2. Docker and Docker compose installed on your local computer

## Running an image from Docker Hub

To run the Docker container from Docker Hub, execute the following (replacing the version "1.0.0" with 
the version that you want to run):

```bash
docker run -p 80:80 ikebox/ikmdev-site:1.0.0
```

Visit http://localhost in your browser to view the content.

# Building and Running Locally

To run the webbsite in a Docker container, follow these steps:

- Start the Docker container with Docker Compose by running:

   ```bash
   docker compose up -d
   ```

The application should now be running in the Docker container. Access it by navigating to
[http://localhost](http://localhost) in your web browser. If running on a remote server, replace localhost with
the server’s IP address.

Note: On the off chance that you have issues with running on the specific port on your computer, the
docker-compose file is configurable to allow for other ports.  This can be run in the following way, substituting 8080
for whatever port you would like to assign:

   ```bash
   NGINX_PORT=8080 docker compose up -d
   ```

## Issues and Contributions
Technical and non-technical issues can be reported to the [Issue Tracker](https://github.com/ikmdev/repo-seed/issues).

Contributions can be submitted via pull requests. Please check the [contribution guide](doc/how-to-contribute.md) for more details.