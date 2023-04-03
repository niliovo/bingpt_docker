#!/bin/sh

API_BASE_URL=${API_BASE_URL:-http://0.0.0.0:3000}

M_DIR="/pandora-ai"

if [ ! -e "$M_DIR/.env" ]; then
  echo "配置文件不存在，正在生成配置文件模板，请修改配置文件并重新启动"
  cp -r $M_DIR/.env.example $M_DIR/.env
elif [ -e "$M_DIR/.env" -a $(cat $M_DIR/.env|wc -l) -eq 0 ]; then
  echo "配置文件已存在，但无参数，正在生成参数，请修改配置文件并重新启动"
  cat $M_DIR/.env.example > $M_DIR/.env
else
  echo "配置文件已存在，请修改配置文件(修改完毕请忽略)"
fi

echo "启动 PandoraAI 服务"
npm run dev
