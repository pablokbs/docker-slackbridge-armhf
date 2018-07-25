ARMHF Docker container for [slack-irc](https://github.com/ekmartin/slack-irc)
===

This container runs on a raspberry-pi, it will create a bridge between an irc channel and a slack one,
check the docs for slack-irc in the [original repo](https://github.com/ekmartin/slack-irc))

### Example of usage with docker-compose

```
version: "2"

services:
  slack-bridge:
    image: pablokbs/docker-slackbridge-armhf
    restart: always
    volumes:
      - ./config.json:/slack-irc/config.json
```

### Configuration

Copy `config.json.sample` to `config.json` and edit to your liking.

### Running

`docker-compose-up -d`

Enjoy

PS: Credits to [caktux](https://github.com/caktux/slackbridge) for the original Docker image for x86/64 
