# lnav-docker
A (very) simple Dockerfile + instructions to allow people to use https://github.com/tstack/lnav, even on Windows!

## Features
- Runs `lnav` in an Alpine Linux container.
- Small and efficient image.
- Can analyze logs from mounted directories or extracted ZIP archives.

## Usage

### Build
First, build the Docker image:

```sh
docker build -t lnav-docker .
```

### Run
To analyze log files from a directory:

```sh
docker run --rm -v "$(pwd)/logs:/logs" lnav-docker /logs
```

To analyze logs inside a ZIP archive:

```sh
docker run --rm -v "$(pwd)/logs.zip:/logs.zip" lnav-docker sh -c "unzip -p /logs.zip | lnav"
```

Ensure that `logs` or `logs.zip` is present in the current working directory before running the container.
