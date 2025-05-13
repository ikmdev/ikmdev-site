# IKMDEV-SITE


This project is designed to build a Docker container using Nginx to serve static content. The container is automatically built and published to Docker Hub using GitHub Actions.

## Repository Structure
.
├── docker
│   ├── Dockerfile-nginx
│   ├── nginx.conf
│   └── index.html
├── .github
│   └── workflows
│       └── docker-publish.yml
└── README.md

## Getting Started

Required for running this:

- Docker Hub account
- GitHub repository with the above structure

## Setup

### Docker Hub

1. Create a Docker Hub repository to store your Docker images.
2. Obtain your Docker Hub username and password for authentication.

### GitHub Secrets

1. Navigate to your GitHub repository.
2. Go to **Settings** > **Secrets and variables** > **Actions**.
3. Add the following secrets:
   - `DOCKER_USERNAME`: Your Docker Hub username.
   - `DOCKER_PASSWORD`: Your Docker Hub password or access token.

## Building and Running

Follow the steps below to build and run static-site on your local machine:

Once the Docker image is published, you can run it locally to serve the static content.

3. Enter the following command to build the application:


Unix/Linux/OSX:

```bash
docker run -p 80:80 ${{ secrets.DOCKER_USERNAME }}/your-repo-name:<version>
```
Visit http://localhost:<port> in your browser to view the content.


## Issues and Contributions
Technical and non-technical issues can be reported to the [Issue Tracker](https://github.com/ikmdev/repo-seed/issues).

Contributions can be submitted via pull requests. Please check the [contribution guide](doc/how-to-contribute.md) for more details.