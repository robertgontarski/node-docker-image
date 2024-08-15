# NodeJS Doker Image

## Description

This Docker image is based on Ubuntu and includes basic tools as well as Node.js installed using NVM (Node Version Manager).

## What’s Included

- Ubuntu as the base operating system.
- Installed tools:
  - `curl`
  - `git`
  - `zip`
  - `vim`
- Node.js (latest) installed via NVM.

## Installation and Usage

### Pull the Image

To pull the image, use the following command:

```bash
docker pull robertgontarski/node
```

### Run the Container via Docker

To run a container based on the pulled image, use the following command:

```bash
docker run -it \
  -p 3000:3000 \
  -v $(pwd):/var/www \
  robertgontarski/node
```

### Run the Container via Docker Compose

To run a container based on the pulled image using Docker Compose, create a `docker-compose.yml` file with the following content:

```yaml

services:
  node:
    image: robertgontarski/node
    ports:
      - 3000:3000
    volumes:
      - .:/var/www
    tty: true
```

Then, run the following command:

```bash
docker-compose up -d
```

### Working in the Container

Once the container is running, the working directory is set to /var/www. You can now work in this directory, install additional packages, run Node.js applications, etc.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

