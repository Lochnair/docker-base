# Docker base images

## Alpine
- Uses the S6-overlay
- Allows you to set the user UID and GID (-e PGID and -e PUID)
- Automatically sets the correct permissions for the /app and /config folders
- cURL preinstalled
- Uses UTC as the default timezone (change with -e TZ)

Pull with:
```bash
docker pull lochnair/base:alpine
```

## Glibc
- Based on above Alpine image
- Includes a compat layer for running glibc applications on musl

## Java
- Based on above Alpine image
- Uses the latest OpenJDK 8 runtime from the Alpine repository

Pull with:
```bash
docker pull lochnair/base:alpine-java
```

## Mono
- Based on above Alpine image
- Uses the Mono runtime from the Alpine testing repository

Pull with:
```bash
docker pull lochnair/base:alpine-mono
```

## Python (2.7)
- Based on above Alpine image
- Uses Alpine Python packages
- Includes latest Pip
- Includes build tools for compiling Python modules

Note: To save space you should uninstall the following packages once you've installed the Python modules you need:
- build-base
- python2-dev

Pull with:
```bash
docker pull lochnair/base:alpine-python27
```