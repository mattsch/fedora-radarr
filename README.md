# Fedora Radarr Docker Container

Docker container for [Radarr](https://radarr.tv/) using Fedora.
This uses the update script from [tuxeh](https://github.com/tuxeh/docker-sonarr)
so you'll need to adjust the update settings to use `/bin/update-radarr.sh`.

## Usage

Create with defaults:

```bash
docker create -v /path/to/config/dir:/config \
    -v /path/to/storage/dir:/storage \
    -v /etc/localtime:/etc/localtime:ro \
    -p 7878:7878 --name=radarr mattsch/fedora-radarr
```

Create with a custom uid/gid for the radarr daemon:

```bash
docker create -v /path/to/config/dir:/config \
    -v /path/to/storage/dir:/storage \
    -v /etc/localtime:/etc/localtime:ro \
    -e LUID=1234 -e LGID=1234 \
    -p 7878:7878 --name=radarr mattsch/fedora-radarr
```
