#!/bin/sh

M_DIR="/pandora-ai"

sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

apk --update --no-cache add git

git clone https://github.com/waylaidwanderer/PandoraAI.git /temp

mv /temp/* $M_DIR

rm -rf /temp

apk del git