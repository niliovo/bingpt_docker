# bingpt_docker

- [中文](./README.md)
- [ENGLISH](./README_EN.md)

- [Github](https://github.com/niliovo/bingpt_docker)
- [Docker Hub](https://hub.docker.com/r/niliaerith/bingpt)

# This project is based on the following projects to integrate PandoraAI into the docker image

- [PandoraAI](https://github.com/waylaidwanderer/PandoraAI)

## Docker-Cli Usage Guide

```bash
docker run -itd --name bingpt --hostname bingpt --net bridge -p 3001:3000 --restart always -v /your_path/bingpt/.env:/pandora-ai/.env -v /your_path/bingpt/nuxt.config.js:/pandora-ai/nuxt.config.js -e API_BASE_URL=https://www.example.com niliaerith/bingpt:latest
```

## Docker Compose Usage Guide

- bingpt

```compose.yml
  bingpt:
    image: niliaerith/bingpt:latest
    container_name: bingpt
    hostname: bingpt
    restart: always
    network_mode: bridge
    ports:
      - 3001:3000
    environment:
      - API_BASE_URL=https://www.example.com
    volumes:
      - /your_path/bingpt/.env:/pandora-ai/.env
      - /your_path/bingpt/nuxt.config.js:/pandora-ai/nuxt.config.js
```

## Variable

> Necessary Variable
- `-v /your_path/bingpt/.env:/pandora-ai/.env`  or `-e API_BASE_URL=https://www.example.com`
- - `-v /your_path/bingpt/.env:/pandora-ai/.env` This file is the API configuration file,the default value is`API_BASE_URL=http://localhost:3000`，It is automatically generated when you run it for the first time. Please modify it. Or add environment variable `-e API_BASE_URL=https://www.example.com`

> Optional Variable
- `-v /your_path/bingpt/nuxt.config.js:/pandora-ai/nuxt.config.js`
- - `nuxt.config.js` file is nuxt configuration file，Can be used to change the title, etc

## Support Platform

- amd64
- arm64

# Thanks

- [@waylaidwanderer/PandoraAI](https://github.com/waylaidwanderer/PandoraAI)
- [GitHub](https://github.com/)
- [Docker Hub](https://hub.docker.com/)
- [USTC open source software mirror](https://mirrors.ustc.edu.cn/)